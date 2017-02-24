class CrossfitBoxesController < ApplicationController
  def index
    @q = CrossfitBox.ransack(params[:q])
    @crossfit_boxes = @q.result(:distinct => true).includes(:city).page(params[:page]).per(10)
    @location_hash = Gmaps4rails.build_markers(@crossfit_boxes.where.not(:address_latitude => nil)) do |crossfit_box, marker|
      marker.lat crossfit_box.address_latitude
      marker.lng crossfit_box.address_longitude
      marker.infowindow "<h5><a href='/crossfit_boxes/#{crossfit_box.id}'>#{crossfit_box.name}</a></h5><small>#{crossfit_box.address_formatted_address}</small>"
    end

    render("crossfit_boxes/index.html.erb")
  end

  def show
    @crossfit_box = CrossfitBox.find(params[:id])

    render("crossfit_boxes/show.html.erb")
  end

  def new
    @crossfit_box = CrossfitBox.new

    render("crossfit_boxes/new.html.erb")
  end

  def create
    @crossfit_box = CrossfitBox.new

    @crossfit_box.name = params[:name]
    @crossfit_box.address = params[:address]
    @crossfit_box.details = params[:details]
    @crossfit_box.city_id = params[:city_id]

    save_status = @crossfit_box.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/crossfit_boxes/new", "/create_crossfit_box"
        redirect_to("/crossfit_boxes")
      else
        redirect_back(:fallback_location => "/", :notice => "Crossfit box created successfully.")
      end
    else
      render("crossfit_boxes/new.html.erb")
    end
  end

  def edit
    @crossfit_box = CrossfitBox.find(params[:id])

    render("crossfit_boxes/edit.html.erb")
  end

  def update
    @crossfit_box = CrossfitBox.find(params[:id])

    @crossfit_box.name = params[:name]
    @crossfit_box.address = params[:address]
    @crossfit_box.details = params[:details]
    @crossfit_box.city_id = params[:city_id]

    save_status = @crossfit_box.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/crossfit_boxes/#{@crossfit_box.id}/edit", "/update_crossfit_box"
        redirect_to("/crossfit_boxes/#{@crossfit_box.id}", :notice => "Crossfit box updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Crossfit box updated successfully.")
      end
    else
      render("crossfit_boxes/edit.html.erb")
    end
  end

  def destroy
    @crossfit_box = CrossfitBox.find(params[:id])

    @crossfit_box.destroy

    if URI(request.referer).path == "/crossfit_boxes/#{@crossfit_box.id}"
      redirect_to("/", :notice => "Crossfit box deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Crossfit box deleted.")
    end
  end
end

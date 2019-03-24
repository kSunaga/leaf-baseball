class TemplatesController < ApplicationController
  before_action :set_template, only: %i(show edit destroy)

  def index
    @templates = current_user.templates.all
  end

  def new
    @template = Template.new
  end

  def show
  end

  def create
    template = current_user.templates.build(set_params)

    if template.save!
      redirect_to templates_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    template = current_user.templates.build(set_params)

    if template.save!
      redirect_to template_path
    else
      render :new
    end
  end

  def destroy
    @template.destroy
    redirect_to templates_path
  end

  private

  def set_template
    @template = Template.find(params[:id])
  end

  def set_params
    params.require(:template).permit(:title, :name, :email, :content)
  end
end

module Admin
  class SitesController < MagnetismController
    actions :new, :edit, :create, :update, :show, :destroy
    helper_method :theme_collection
    defaults :route_prefix => 'admin_manage'
    layout_options :overlay => [:new, :edit], :none => :create

    def show
      session[:site_id] = resource.id
      redirect_to admin_pages_path
    end

    def create
      create! do |success, failure|
        # DH: I think I want to rethink where this goes
        # and if creating a new site should be in an overlay
        failure.html { redirect_to admin_manage_path }
      end
    end

    def update
      if params[:position]
        ids = params[:position]
        values = (1..ids.count).map { |i| {:position => i} }
        resource.pages.update(ids, values)

        render :nothing => true
      else
        update! { admin_manage_path }
      end
    end

    alias :destroy :render_destroy_js

    private
      def theme_collection
        @theme_collection ||= Theme.all
      end
  end
end

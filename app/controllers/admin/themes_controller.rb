module Admin
  class ThemesController < MagnetismController
    actions :all
    layout_options :overlay => [:new, :edit], :none => :update
    defaults route_prefix: 'admin_manage'
    helper :theme

    def update
      update! { admin_manage_path }
    end

    alias :destroy :render_destroy_js
  end
end

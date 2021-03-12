require 'rails_helper'

RSpec.describe Admin::ReleasesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/admin/releases').to route_to('admin/releases#index')
    end

    it 'routes to #new' do
      expect(get: '/admin/releases/new').to route_to('admin/releases#new')
    end

    it 'routes to #show' do
      expect(get: '/admin/releases/1').to route_to('admin/releases#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/admin/releases/1/edit').to route_to('admin/releases#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/admin/releases').to route_to('admin/releases#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/admin/releases/1').to route_to('admin/releases#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/admin/releases/1').to route_to('admin/releases#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/admin/releases/1').to route_to('admin/releases#destroy', id: '1')
    end
  end
end

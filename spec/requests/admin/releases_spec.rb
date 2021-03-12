require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/admin/releases', type: :request do
  # Release. As you add validations to Release, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    { claim_limit: 50, email_template: 'Hi all' }
  end

  let(:invalid_attributes) do
    { claim_limit: -1 }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Release.create! valid_attributes
      get admin_releases_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      release = Release.create! valid_attributes
      get admin_release_url(release)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_admin_release_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      release = Release.create! valid_attributes
      get edit_admin_release_url(release)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Release' do
        expect do
          post admin_releases_url, params: { release: valid_attributes }
        end.to change(Release, :count).by(1)
      end

      it 'redirects to the created release' do
        post admin_releases_url, params: { release: valid_attributes }
        expect(response).to redirect_to(admin_release_url(Release.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Release' do
        expect do
          post admin_releases_url, params: { release: invalid_attributes }
        end.to change(Release, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post admin_releases_url, params: { release: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        { claim_limit: 50, email_template: 'Hi you!' }
      end

      it 'updates the requested release' do
        release = Release.create! valid_attributes
        patch admin_release_url(release), params: { release: new_attributes }
        release.reload
        expect(release.email_template).to eq('Hi you!')
      end

      it 'redirects to the release' do
        release = Release.create! valid_attributes
        patch admin_release_url(release), params: { release: new_attributes }
        release.reload
        expect(response).to redirect_to(admin_release_url(release))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        release = Release.create! valid_attributes
        patch admin_release_url(release), params: { release: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested release' do
      release = Release.create! valid_attributes
      expect do
        delete admin_release_url(release)
      end.to change(Release, :count).by(-1)
    end

    it 'redirects to the releases list' do
      release = Release.create! valid_attributes
      delete admin_release_url(release)
      expect(response).to redirect_to(admin_releases_url)
    end
  end
end

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe WorkingGroupsController, type: :controller do


  let(:volunteer){FactoryGirl.create(:volunteer)}
  let(:circle){FactoryGirl.create(:circle)}
  # This should return the minimal set of attributes required to create a valid
  # WorkingGroup. As you add validations to WorkingGroup, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {name: "Valid WG"}
  }

  let(:invalid_attributes) {
    {name: nil}
  }

  let!(:working_group){circle.working_groups.create!(valid_attributes)}

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WorkingGroupsController. Be sure to keep this updated too.
  let(:valid_session) { { user_id: volunteer.id } }
  let(:valid_url_args) { { circle_id: circle.id} }

  describe "GET #index" do
    it "assigns all working_groups as @working_groups" do
      get :index, valid_url_args, valid_session
      expect(assigns(:working_groups)).to eq([working_group])
    end
  end

  describe "GET #show" do
    it "assigns the requested working_group as @working_group" do
      get :show, valid_url_args.merge({:id => working_group.to_param}), valid_session
      expect(assigns(:working_group)).to eq(working_group)
    end
  end

  describe "GET #new" do
    it "assigns a new working_group as @working_group" do
      get :new, valid_url_args, valid_session
      expect(assigns(:working_group)).to be_a_new(WorkingGroup)
    end
  end

  describe "GET #edit" do
    it "assigns the requested working_group as @working_group" do
      get :edit, valid_url_args.merge({:id => working_group.to_param}), valid_session
      expect(assigns(:working_group)).to eq(working_group)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new WorkingGroup" do
        expect {
          post :create, valid_url_args.merge({:working_group => valid_attributes}), valid_session
        }.to change(WorkingGroup, :count).by(1)
      end

      it "assigns a newly created working_group as @working_group" do
        post :create, valid_url_args.merge({:working_group => valid_attributes}), valid_session
        expect(assigns(:working_group)).to be_a(WorkingGroup)
        expect(assigns(:working_group)).to be_persisted
      end

      it "redirects to the created working_group" do
        post :create, valid_url_args.merge({:working_group => valid_attributes}), valid_session
        expect(response).to redirect_to(circle)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved working_group as @working_group" do
        post :create, valid_url_args.merge({:working_group => invalid_attributes}), valid_session
        expect(assigns(:working_group)).to be_a_new(WorkingGroup)
      end

      it "re-renders the 'new' template" do
        post :create, valid_url_args.merge({:working_group => invalid_attributes}), valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {name: "Fooo"}
      }

      it "updates the requested working_group" do
        put :update, valid_url_args.merge({:id => working_group.to_param, :working_group => new_attributes}), valid_session
        working_group.reload
        expect(working_group.name).to eq("Fooo")
      end

      it "assigns the requested working_group as @working_group" do
        put :update, valid_url_args.merge({:id => working_group.to_param, :working_group => valid_attributes}), valid_session
        expect(assigns(:working_group)).to eq(working_group)
      end

      it "redirects to the working_group" do
        put :update, valid_url_args.merge({:id => working_group.to_param, :working_group => valid_attributes}), valid_session
        expect(response).to redirect_to(circle)
      end
    end

    context "with invalid params" do
      it "assigns the working_group as @working_group" do
        put :update, valid_url_args.merge({:id => working_group.to_param, :working_group => invalid_attributes}), valid_session
        expect(assigns(:working_group)).to eq(working_group)
      end

      it "re-renders the 'edit' template" do
        put :update, valid_url_args.merge({:id => working_group.to_param, :working_group => invalid_attributes}), valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested working_group" do
      expect {
        delete :destroy, valid_url_args.merge({:id => working_group.to_param}), valid_session
      }.to change(WorkingGroup, :count).by(-1)
    end

    it "redirects to the working_groups list" do
      delete :destroy, valid_url_args.merge({:id => working_group.to_param}), valid_session
      expect(response).to redirect_to(circle_url(circle))
    end
  end

end

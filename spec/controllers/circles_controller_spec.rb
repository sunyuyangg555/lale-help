#
# FIXME these are outdated and are currently skipped in test runs. Either adapt them and enable, or remove them.
# 
# require 'rails_helper'

# # This spec was generated by rspec-rails when you ran the scaffold generator.
# # It demonstrates how one might use RSpec to specify the controller code that
# # was generated by Rails when you ran the scaffold generator.
# #
# # It assumes that the implementation code is generated by the rails scaffold
# # generator.  If you are using any extension libraries to generate different
# # controller code, this generated spec may or may not pass.
# #
# # It only uses APIs available in rails and/or rspec-rails.  There are a number
# # of tools you can use to make these specs even more expressive, but we're
# # sticking to rails and rspec-rails APIs to keep things simple and stable.
# #
# # Compared to earlier versions of this generator, there is very limited use of
# # stubs and message expectations in this spec.  Stubs are only used when there
# # is no simpler way to get a handle on the object needed for the example.
# # Message expectations are only used when there is no simpler way to specify
# # that an instance is receiving a specific message.

# RSpec.describe CirclesController, type: :controller, skip: true do

#   let(:circle){create(:circle, valid_attributes) }
#   let(:location){create(:location)}
#   let(:admin){circle.admin}
#   before(:each){
#     allow(Location).to receive(:location_from).and_return(location)
#     allow(Location).to receive(:near).and_return([location])
#     circle
#   }
#   # This should return the minimal set of attributes required to create a valid
#   # Circle. As you add validations to Circle, be sure to
#   # adjust the attributes here as well.
#   let(:valid_attributes) {
#     { name: "Circle", location_text: location.name }
#   }

#   let(:invalid_attributes) {
#     { name: nil, location_text: location.name }

#   }

#   # This should return the minimal set of values that should be in the session
#   # in order to pass any filters (e.g. authentication) defined in
#   # CirclesController. Be sure to keep this updated too.
#   let(:valid_session) {{ user_id: admin.id }}
#   let(:unalligned_volunteer_session) {{ user_id: create(:volunteer).id }}

#   describe "GET #index" do
#     it "assigns all circles as @circles" do
#       get :index, {}, valid_session
#       expect(assigns(:circles)).to eq([circle])
#     end
#   end

#   describe "GET #show" do
#     it "assigns the requested circle as @circle" do
#       get :show, {:id => circle.to_param}, valid_session
#       expect(assigns(:circle)).to eq(circle)
#     end
#   end

#   describe "GET #new" do
#     it "assigns a new circle as @circle" do
#       get :new, {}, unalligned_volunteer_session
#       expect(assigns(:circle)).to be_a_new(Circle)
#     end
#   end

#   describe "GET #edit" do
#     it "assigns the requested circle as @circle" do
#       get :edit, {:id => circle.to_param}, valid_session
#       expect(assigns(:circle)).to eq(circle)
#     end
#   end

#   describe "POST #create" do
#     context "with valid params" do
#       it "creates a new Circle" do
#         expect {
#           post :create, {:circle => valid_attributes}, unalligned_volunteer_session
#         }.to change(Circle, :count).by(1)
#       end

#       it "assigns a newly created circle as @circle" do
#         post :create, {:circle => valid_attributes}, unalligned_volunteer_session
#         expect(assigns(:circle)).to be_a(Circle)
#         expect(assigns(:circle)).to be_persisted
#       end

#       it "redirects to the created circle" do
#         post :create, {:circle => valid_attributes}, unalligned_volunteer_session
#         expect(response).to redirect_to(Circle.last)
#       end
#     end

#     context "with invalid params" do
#       it "assigns a newly created but unsaved circle as @circle" do
#         post :create, {:circle => invalid_attributes}, unalligned_volunteer_session
#         expect(assigns(:circle)).to be_a_new(Circle)
#       end

#       it "re-renders the 'new' template" do
#         post :create, {:circle => invalid_attributes}, unalligned_volunteer_session
#         expect(response).to render_template("new")
#       end
#     end
#   end

#   describe "PUT #update" do
#     context "with valid params" do
#       let(:new_attributes) {
#         {name: "Fooo"}
#       }

#       it "updates the requested circle" do
#         put :update, {:id => circle.to_param, :circle => new_attributes}, valid_session
#         circle.reload
#         expect(circle.name).to eq("Fooo")
#       end

#       it "assigns the requested circle as @circle" do
#         put :update, {:id => circle.to_param, :circle => valid_attributes}, valid_session
#         expect(assigns(:circle)).to eq(circle)
#       end

#       it "redirects to the circle" do
#         put :update, {:id => circle.to_param, :circle => valid_attributes}, valid_session
#         expect(response).to redirect_to(circle)
#       end
#     end

#     context "with invalid params" do
#       it "assigns the circle as @circle" do
#         put :update, {:id => circle.to_param, :circle => invalid_attributes}, valid_session
#         expect(assigns(:circle)).to eq(circle)
#       end

#       it "re-renders the 'edit' template" do
#         put :update, {:id => circle.to_param, :circle => invalid_attributes}, valid_session
#         expect(response).to render_template("edit")
#       end
#     end
#   end

#   describe "DELETE #destroy" do
#     it "destroys the requested circle" do
#       expect {
#         delete :destroy, {:id => circle.to_param}, valid_session
#       }.to change(Circle, :count).by(-1)
#     end

#     it "redirects to the circles list" do
#       delete :destroy, {:id => circle.to_param}, valid_session
#       expect(response).to redirect_to(Circle)
#     end
#   end

# end

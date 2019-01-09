require "rails_helper"

describe "New WorkSample" do
  before(:each) do
    visit("/work_samples/new")
  end

  feature "Fill and upload new work_sample form" do
    scenario "fill the work_sample form" do
      within("#new") do
        fill_in "work_sample[name]", with: "project name"
        sleep 1
        fill_in "work_sample[content]", with: "The content of the work_sample"
        sleep 1
        attach_file("work_sample[files][]", "/Users/andeladeveloper/Desktop/griin.jpeg")
        sleep 1
        click_button("Create Work sample")
        sleep 3
      end

      expect(page).to have_css("img")
    end
  end
end

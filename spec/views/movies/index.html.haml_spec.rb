require 'spec_helper'

describe "movies/index" do
  before(:each) do
    assign(:movies, [
      stub_model(Movie,
        :name => "Name",
        :imdb_id => "Imdb",
        :year => 1
      ),
      stub_model(Movie,
        :name => "Name",
        :imdb_id => "Imdb",
        :year => 1
      )
    ])
  end

  it "renders a list of movies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Imdb".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

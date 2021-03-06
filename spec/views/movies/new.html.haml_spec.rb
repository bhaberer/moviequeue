require 'spec_helper'

describe "movies/new" do
  before(:each) do
    assign(:movie, stub_model(Movie,
      :name => "MyString",
      :imdb_id => "MyString",
      :year => 1
    ).as_new_record)
  end

  it "renders new movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movies_path, "post" do
      assert_select "input#movie_name[name=?]", "movie[name]"
      assert_select "input#movie_imdb_id[name=?]", "movie[imdb_id]"
      assert_select "input#movie_year[name=?]", "movie[year]"
    end
  end
end

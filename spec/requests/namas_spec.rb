require 'rails_helper'

RSpec.describe '/namas', type: :request do
  let(:txt_file) { fixture_file_upload('dados.txt', 'text/txt') }
  let(:params) { { data_file: txt_file } }

  describe 'GET /index' do
    it 'renders a successful response' do
      get namas_path
      expect(response).to be_successful
    end
  end

  describe 'POST /namas' do
    it 'creates four Namas' do
      expect { post namas_path, params: params }.to change(Nama, :count).by 4
    end
  end
end

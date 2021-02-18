require 'rails_helper'

RSpec.describe 'UploadDataJob', type: :job do
  let(:txt_file) { File.open('spec/fixtures/dados.txt') }

  it 'works fine' do
    expect { UploadDataJob.initialize(txt_file) }.to change(Nama, :count).by 4
  end
end

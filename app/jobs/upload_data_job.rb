class UploadDataJob < ApplicationJob
  def self.initialize(data_file)
    file = data_file.read.force_encoding('UTF-8')
    file = file.split("\r\n")

    file.each do |line|
      next if line.upcase.starts_with? 'COMPRADOR'

      line = line.split("\t")

      Nama.create_with(
        description: line[1],
        price: line[2],
        quantity: line[3],
        address: line[4]
      ).find_or_create_by!(
        buyer: line[0],
        provider: line[5]
      )
    end
  end
end

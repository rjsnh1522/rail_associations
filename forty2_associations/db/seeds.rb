[
	"Power",
	"Space",
	"Reality",
	"Mind",
	"Time",
	"Soul"].each_with_index do |v,i|
		Category.create!(id:(i+1),name:v)
	end
resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

files {
	'data/vehicles.meta',
	'data/carcols.meta',
	'data/carvariations.meta',
	'data/handling.meta',
	'data/handling2.meta',
	'data/handling3.meta',
	'data/handling4.meta',
	'data/handling5.meta',
	'data/handling6.meta',
}

data_file 'HANDLING_FILE' 'data/handling6.meta'
data_file 'HANDLING_FILE' 'data/handling5.meta'
data_file 'HANDLING_FILE' 'data/handling4.meta'
data_file 'HANDLING_FILE' 'data/handling3.meta'
data_file 'HANDLING_FILE' 'data/handling2.meta'
data_file 'HANDLING_FILE' 'data/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/carvariations.meta'

client_script 'data/vehicle_names.lua'
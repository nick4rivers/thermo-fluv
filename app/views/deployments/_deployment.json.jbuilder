json.extract! deployment, :id, :deploy_notes, :deploy_date, :deploy_time, :retrieve_status, :retrieve_notes, :retrieve_date, :retrieve_time, :site_id, :unit_id, :created_at, :updated_at
json.url deployment_url(deployment, format: :json)

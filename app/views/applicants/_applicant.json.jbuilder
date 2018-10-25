json.extract! applicant, :id, :name, :email, :phone, :university, :major, :graduation_time, :sponsorship, :degree, :created_at, :updated_at
json.url applicant_url(applicant, format: :json)

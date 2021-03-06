class CreatesOrganization
    attr_accessor :organization_name, :organization, :organization_location

    def initialize(organization_name: "", organization_location: nil)
        @organization_name = organization_name
        @organization_location = organization_location
    end

    def build
       self.organization = Organization.new(name: organization_name, location: organization_location)
    end

    def create
        build
        organization.save
    end
end
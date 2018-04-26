namespace BugsBox.Pharmacy.Repository.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddCity : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.AdverseDrugEvent",
                c => new
                    {
                        Id = c.Guid(nullable: false),
                        EventTitle = c.String(),
                        EventDescription = c.String(),
                        OccurrenceTime = c.String(),
                        CreateTime = c.DateTime(nullable: false),
                        CreateUserId = c.Guid(nullable: false),
                        UpdateTime = c.DateTime(nullable: false),
                        UpdateUserId = c.Guid(nullable: false),
                        Deleted = c.Boolean(nullable: false),
                        DeleteTime = c.DateTime(),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.AdverseDrugEvent");
        }
    }
}

using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace DULICH.Migrations
{
    public partial class updateHoaDon : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "HoaDon",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    hoadon = table.Column<string>(nullable: true),
                    doan_id = table.Column<int>(nullable: false),
                    loaichiphi_id = table.Column<int>(nullable: false),
                    ngaylap = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_HoaDon", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "HoaDon");
        }
    }
}

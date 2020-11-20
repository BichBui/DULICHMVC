using Microsoft.EntityFrameworkCore.Migrations;

namespace DULICH.Migrations
{
    public partial class addcolumn : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "noidung",
                table: "HoaDon",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "sotien",
                table: "HoaDon",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "noidung",
                table: "HoaDon");

            migrationBuilder.DropColumn(
                name: "sotien",
                table: "HoaDon");
        }
    }
}

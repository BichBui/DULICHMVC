﻿// <auto-generated />
using System;
using DULICH.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace DULICH.Migrations
{
    [DbContext(typeof(DULICHContext))]
    [Migration("20201118181840_create")]
    partial class create
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.10")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("DULICH.Models.Tour_chiphi", b =>
                {
                    b.Property<int>("chiphi_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("chiphi_chitiet")
                        .HasColumnType("nvarchar(max)");

                    b.Property<double>("chiphi_total")
                        .HasColumnType("float");

                    b.Property<int>("doan_id")
                        .HasColumnType("int");

                    b.HasKey("chiphi_id");

                    b.ToTable("Tour_chiphi");
                });

            modelBuilder.Entity("DULICH.Models.Tour_chitiet", b =>
                {
                    b.Property<int>("ct_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("ct_thutu")
                        .HasColumnType("int");

                    b.Property<int>("dd_id")
                        .HasColumnType("int");

                    b.Property<int>("tour_id")
                        .HasColumnType("int");

                    b.HasKey("ct_id");

                    b.ToTable("Tour_chitiet");
                });

            modelBuilder.Entity("DULICH.Models.Tour_diadiem", b =>
                {
                    b.Property<int>("dd_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("dd_mota")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("dd_ten")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("dd_thanhpho")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("dd_id");

                    b.ToTable("Tour_diadiem");
                });

            modelBuilder.Entity("DULICH.Models.Tour_doan", b =>
                {
                    b.Property<int>("doan_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("doan_chitietchuongtrinh")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("doan_name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("doan_ngaydi")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("doan_ngayve")
                        .HasColumnType("datetime2");

                    b.Property<int>("gia_id")
                        .HasColumnType("int");

                    b.Property<int>("tour_id")
                        .HasColumnType("int");

                    b.HasKey("doan_id");

                    b.ToTable("Tour_doan");
                });

            modelBuilder.Entity("DULICH.Models.Tour_gia", b =>
                {
                    b.Property<int>("gia_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("gia_denngay")
                        .HasColumnType("datetime2");

                    b.Property<double>("gia_sotien")
                        .HasColumnType("float");

                    b.Property<DateTime>("gia_tungay")
                        .HasColumnType("datetime2");

                    b.Property<int>("tour_id")
                        .HasColumnType("int");

                    b.HasKey("gia_id");

                    b.ToTable("Tour_gia");
                });

            modelBuilder.Entity("DULICH.Models.Tour_khachhang", b =>
                {
                    b.Property<int>("kh_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("kh_cmnd")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("kh_email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("kh_ngaysinh")
                        .HasColumnType("datetime2");

                    b.Property<string>("kh_sdt")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("kh_ten")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("kh_id");

                    b.ToTable("Tour_khachhang");
                });

            modelBuilder.Entity("DULICH.Models.Tour_loai", b =>
                {
                    b.Property<int>("loai_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("loai_mota")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("loai_ten")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("loai_id");

                    b.ToTable("Tour_loai");
                });

            modelBuilder.Entity("DULICH.Models.Tour_loaichiphi", b =>
                {
                    b.Property<int>("cp_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("cp_mota")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("cp_ten")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("cp_id");

                    b.ToTable("Tour_loaichiphi");
                });

            modelBuilder.Entity("DULICH.Models.Tour_nguoidi", b =>
                {
                    b.Property<int>("nguoidi_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("doan_id")
                        .HasColumnType("int");

                    b.Property<string>("nguoidi_dskhach")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("nguoidi_dsnhanvien")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("nguoidi_id");

                    b.ToTable("Tour_nguoidi");
                });

            modelBuilder.Entity("DULICH.Models.Tour_nhanvien", b =>
                {
                    b.Property<int>("nv_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("nv_email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("nv_ngaysinh")
                        .HasColumnType("datetime2");

                    b.Property<string>("nv_nhiemvu")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("nv_sdt")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("nv_ten")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("nv_id");

                    b.ToTable("Tour_nhanvien");
                });

            modelBuilder.Entity("DULICH.Models.Tours", b =>
                {
                    b.Property<int>("tour_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int?>("loai_id")
                        .HasColumnType("int");

                    b.Property<string>("tour_mota")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("tour_ten")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("tour_id");

                    b.ToTable("Tours");
                });
#pragma warning restore 612, 618
        }
    }
}

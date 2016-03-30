using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Model.EF
{
    [Table("UserGroup")]
    public class UserGroup
    {
        [Key]
        [StringLength(20)]
        public string ID { get; set; }

        [StringLength(50)]
        public string Name { get; set; }
    }
}

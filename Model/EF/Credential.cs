using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace Model.EF
{
    [Table("Credential")]
    [Serializable]
    public class Credential
    {
        [Key]
        [StringLength(20)]
        public string UserGroupID { set; get; }

        [StringLength(50)]
        public string RoleID { set; get; }
    }
}

using BugsBox.Application.Core;
using BugsBox.Pharmacy.Models;
using BugsBox.Pharmacy.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.Commands.SaleService
{
    [DataContract(Namespace = "http://www.dqinfo.net/2017/dqinfo")]
    public class CarryOutExaminationEditCommand : Command
    {
        [DataMember]
        public CarryOutExamination Record { get; set; }
        public override object Execute()
        {
            using (var db = new Db())
            {
                var originItem = db.CarryOutExaminations.FirstOrDefault(o => o.Id == Record.Id);
                if (originItem == null)
                {
                    Record.CreateTime = DateTime.Now;
                    Record.UpdateTime = DateTime.Now;
                    db.CarryOutExaminations.Add(Record);
                }
                else
                {
                    originItem.DateYear = Record.DateYear;
                    originItem.ExaminedDepartMent = Record.ExaminedDepartMent;
                    originItem.Verifier = Record.Verifier;
                    originItem.VerifierDate = Record.VerifierDate;
                    originItem.VerifierFileName = Record.VerifierFileName;
                    originItem.VerifierContent = Record.VerifierContent;
                    originItem.ExistingProblems = Record.ExistingProblems;
                    originItem.VerifierSignature = Record.VerifierSignature;
                    originItem.VerifierSignatureDate = Record.VerifierSignatureDate;
                    originItem.RectifyHandle = Record.RectifyHandle;
                    originItem.BeenVerifierSignature = Record.BeenVerifierSignature;
                    originItem.BeenVerifiedDepartSignature = Record.BeenVerifiedDepartSignature;
                    originItem.BeenVerifierSignatureDate = Record.BeenVerifierSignatureDate;
                    originItem.UsedDepartment = Record.UsedDepartment;
                    originItem.UpdateTime = DateTime.Now;
                }
                return db.SaveChanges();
            }
        }
    }
}

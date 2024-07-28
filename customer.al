table 501111 Employe
{
    Caption = 'Employee table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "emp code "; Code[10])
        {
            DataClassification = ToBeClassified;
        }

        field(10; "emp name "; Text[15])
        {
            DataClassification = ToBeClassified;
        }
        field(20; "salary "; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(30; "DOJ "; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(40; "gender "; Option)
        {
            OptionMembers = M,F;
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(key1; "emp code ", "emp name ")
        {
            Clustered = true;
        }
        key(sk; "gender ")
        {

        }


    }
    var
    // value1: Integer;



    trigger OnInsert()

    begin
        Message('Data inserted');
    end;



    trigger OnModify()

    begin
        Message('Data Modified');
    end;

    trigger OnDelete()

    begin
        Message('Data Deleted');
    end;

    trigger OnRename()

    begin
        Message('Data Renamed');
    end;
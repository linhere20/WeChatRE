.class Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactInfoDao;


# instance fields
.field private final DATA:Ljava/lang/String;

.field private final LABEL:Ljava/lang/String;

.field private final TYPE:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;

.field private typemap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x1

    .line 589
    iput-object p1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;->this$0:Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;->typemap:Ljava/util/Map;

    .line 574
    const-string v1, "data1"

    iput-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;->DATA:Ljava/lang/String;

    .line 575
    const-string v1, "data2"

    iput-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;->TYPE:Ljava/lang/String;

    .line 576
    const-string v1, "data3"

    iput-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;->LABEL:Ljava/lang/String;

    .line 580
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;->typemap:Ljava/util/Map;

    .line 582
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const-string v2, "HOME"

    aput-object v2, v1, v0

    const/4 v2, 0x2

    const-string v3, "WORK"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 583
    const-string v3, "OTHER"

    aput-object v3, v1, v2

    const-string v2, "CELL"

    aput-object v2, v1, v5

    .line 584
    :goto_0
    if-le v0, v5, :cond_0

    return-void

    .line 586
    :cond_0
    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;->typemap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;->typemap:Ljava/util/Map;

    aget-object v3, v1, v0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getContentValues(JLjava/util/List;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 662
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 690
    :cond_0
    return-void

    .line 664
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 666
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/object/Record;

    .line 667
    if-eqz v0, :cond_4

    .line 669
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 670
    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 671
    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-virtual {v0, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, ""

    .line 674
    :goto_1
    const-string v4, "data1"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->dealContactLabel(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->access$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 677
    if-eqz v2, :cond_3

    .line 679
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;->typemap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 680
    if-nez v0, :cond_2

    .line 682
    const-string v0, "data3"

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v0, "0"

    .line 685
    :cond_2
    const-string v2, "data2"

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_3
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 673
    :cond_5
    invoke-virtual {v0, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public insert(Landroid/content/ContentResolver;JLjava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    .line 623
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 656
    :cond_1
    return-object v1

    .line 625
    :cond_2
    const-string v1, ""

    .line 626
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 628
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/object/Record;

    .line 629
    if-eqz v0, :cond_6

    .line 631
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 632
    const-string v3, "raw_contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 633
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {v0, v6}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, ""

    .line 636
    :goto_1
    const-string v5, "data1"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->dealContactLabel(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->access$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 639
    if-eqz v3, :cond_4

    .line 641
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;->typemap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 642
    if-nez v0, :cond_3

    .line 644
    const-string v0, "data3"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v0, "0"

    .line 647
    :cond_3
    const-string v3, "data2"

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;->this$0:Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;

    #getter for: Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->AUTHORITY_URI:Landroid/net/Uri;
    invoke-static {v0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->access$0(Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "data"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 651
    invoke-virtual {p1, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 652
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 635
    :cond_5
    invoke-virtual {v0, v6}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method public read(Landroid/database/Cursor;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 593
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    new-instance v1, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v1}, Lcom/tencent/qqpim/object/Record;-><init>()V

    .line 598
    const/4 v0, 0x0

    const-string v2, "EMAIL"

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 600
    const-string v0, "data2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 601
    if-eqz v0, :cond_3

    .line 603
    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;->typemap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 604
    if-nez v0, :cond_2

    .line 606
    const-string v0, "data3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 607
    if-nez v0, :cond_2

    const-string v0, ""

    .line 609
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 612
    :cond_3
    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 613
    if-nez v0, :cond_4

    const-string v0, ""

    .line 614
    :cond_4
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 616
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

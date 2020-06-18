Return-Path: <open-iscsi+bncBDTZTRGMXIFBBHEGVP3QKGQERVIBXLY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB441FDDB4
	for <lists+open-iscsi@lfdr.de>; Thu, 18 Jun 2020 03:27:57 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id l11sf2933979ils.11
        for <lists+open-iscsi@lfdr.de>; Wed, 17 Jun 2020 18:27:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443676; cv=pass;
        d=google.com; s=arc-20160816;
        b=z0H/PAqlRB6JTbTo4VxY519zuwxNIJpllqUtuzKoSmZVEBeTmqGuFjf4W7J4K5DziC
         QE/AcaIJjPIaVgT6t81qwhXQVqQnuFNgEMdhgRWkdFA8lp8t34LWypgKsD/puRKQnmT2
         zUrDpPdIEt9abWpfxQpfLbkffFsqEYsa7K3QE5uy2dQbzHjbtpakEh43EDtYZ4PldS6x
         P616zZQ8oAX87fJLg3G5GsnmnQjEprCFM5KFk1eo3B0D4SLTnUqQIKwa3MxxdYmkSUgT
         PDeQ82qL/XdwROv0UnlqAN7aSkB2K5VYynGMSAj0j8DRh+iHF8idG69ZvrLmI4rUA7ek
         e5SQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=YYtkbsEVxBSnfFDDuxZ18uBDRwKioSUCu4Q3SW4rpHo=;
        b=0m5KRX3QsQyr5xTFdIX88aSl0NaSKBEQDHmqTUvRRHrNWSdsewvGiSkxT0WMSUDPUN
         0kxeuskUr1hOUvzI3G+VMdoMKXFINcUhYAD5nc5RPC10MwnzRLeVGaOnP8ZII0fVxpN2
         OrJm811jW8p4lEniq5zanQZpFCVlnPPlEqPeUbDLuMwmaShl8h8sd9n2i98DeYIhxcV3
         yi7SETtlx1R9OdOKW7JEyqm679PYU4670bCOw102ptGeaP90KWLBmCh2ucSJ/6JYz6g1
         TqePPo38KujO9GrOfPOuYOoNqAaZfspesOwH0IpBDy9zze4FEDr3WByVDLvIQ9xnvMVn
         Xj+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JZbH0lbi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YYtkbsEVxBSnfFDDuxZ18uBDRwKioSUCu4Q3SW4rpHo=;
        b=ALseCE/tR3ld8lYOLweIr+Kt5caE1HPE8JAUYd3v/p6hfMUSmnuXjnoSymnFYoO0ti
         76NoBExq2L/DRpvvlFicFkqtkWy275D8UFKPgbi4+QwiwbHovQuUz1J5TMv/LBoY8xzu
         jhWHyMWq6iZxHe0XFwXm/sOoxdbV7vRjMjK1YMsKHHuw+HSkqim4sZ/4SpjeaZHKSKjt
         Jus3ULwLJW94EcT8MD8iHCVqnQxzbwRZJssqr+kYyuGSD2ASeNyfaajz1vErpw9Oc61C
         trC0nJOnywbaWzv03a5z+M6Jg5ytz9pPm9yZ8hbJ0265uH5XVXzVQS2yyJzw0qH66n5g
         9K5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YYtkbsEVxBSnfFDDuxZ18uBDRwKioSUCu4Q3SW4rpHo=;
        b=juDPkUzkHg661OzxcWJLLEpekmDmKK4avyuCk/Lee0FQLL8LHu4UMXrmmjtcpo79Qg
         /wfdVnzavOic9YI2ZfsJos/kOwayI5kO+9tG6aCsBILyw4g2BXHO1ukiMseMCFb7hvt1
         GxPmlKm2+IANT0CzwrrfSwieckJEHyFUPJ111aKQpQ8pVzx+nb26TAAA+WdIcZbGMc6J
         fG0p7b5O8pIxHe4S1cJif8MT0L9FerxGZGSyfGXGpKHxQhQDL2x18YARBReWeoCmTLaN
         PXkCNXxYBtF9DFaT5U4EivRFswGRacj68+FJQG9ZbCxu9n53M+EEZQ/zFNEGctelSB9u
         tYkA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533J+cTf8qWkmqWbXSazxd621HQi2/GfWrWEouQsXrpg4+N4B6SP
	jI0M/6gsOhYQqzCWg86icus=
X-Google-Smtp-Source: ABdhPJxMuX+8UPPRqTOjva6Og1RbZvo+zMIttaWXMeaj4zcos3Q1x4ID/D72OwN0oVfZ2J9wQ//9tA==
X-Received: by 2002:a6b:7611:: with SMTP id g17mr2444889iom.110.1592443676431;
        Wed, 17 Jun 2020 18:27:56 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6638:1389:: with SMTP id w9ls20854jad.4.gmail; Wed, 17
 Jun 2020 18:27:56 -0700 (PDT)
X-Received: by 2002:a02:3501:: with SMTP id k1mr2101741jaa.133.1592443676008;
        Wed, 17 Jun 2020 18:27:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443676; cv=none;
        d=google.com; s=arc-20160816;
        b=NcSfxTk6FXvktDINCOinhH4liNRkhVFzMUrufTQUcjNGEiZeq7PcI5kRV3j9cYZGP6
         uRR1oUKcMa8HIQq0/S0B7I2UpdTiEyuQpxf+AkC2nzOO73hdGSoEAfH3rHlqjTXHKusP
         zePqLvU8wmY3XPm7cKaRguEDjaaCF6Mn+CBaNZmByYOtsBTQrmKdh7FOXj43kEt4+Qf0
         XmnAt55SnhvIVOTZ++a0vjuAf90Q4mWv2/tHPLXcCZTFOHbv9D/BFEFCpyIeiM5QdEm2
         axsGyZ088oGUB8KolnYh6KVNfsdQ7M0++B6dCKwrIkIjIwdmjLQ0sHFOfJJWYMBcEPH8
         Uoiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1WVU3dHVbFQ0IJWYZMoO8IzG3PFSyFeafkQcOlpGtc4=;
        b=AGfxCmo8AShDF+digaznaI7DwI5ZHS+k+wESeA/iJJ0K6xSvet82JcWCgZBD/wuyhn
         W8p86tJ0iXKNyPbBa0TPdGTnXbUbjOEILeiJyTUwKcXqyrO9QeC4gAdwQl4omted2DAi
         LuhctBuMSKHvlWTOipO/isYxDz/g7KuN5oC587S5HJQwxzmXH0JjZHH79R9AOQSg08g2
         z5kKgIh+XEDAkfSfPRbN6ROh1xbL4ebG0TLSHxFr1yUPZ0VNT8XE2Sfwcr1CFDlFjs4F
         Bgzh+U1rE4s2FqkX0z0vg39P6ZOcHmiIg9N0+421j5JqTrjxj0xGnaT7A+ZuLwR6c15n
         LRyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JZbH0lbi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c7si53575ilf.2.2020.06.17.18.27.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:27:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8D8DB22200;
	Thu, 18 Jun 2020 01:27:54 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Qiushi Wu <wu000273@umn.edu>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 091/108] scsi: iscsi: Fix reference count leak in iscsi_boot_create_kobj
Date: Wed, 17 Jun 2020 21:25:43 -0400
Message-Id: <20200618012600.608744-91-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012600.608744-1-sashal@kernel.org>
References: <20200618012600.608744-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=JZbH0lbi;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

From: Qiushi Wu <wu000273@umn.edu>

[ Upstream commit 0267ffce562c8bbf9b57ebe0e38445ad04972890 ]

kobject_init_and_add() takes reference even when it fails. If this
function returns an error, kobject_put() must be called to properly
clean up the memory associated with the object.

Link: https://lore.kernel.org/r/20200528201353.14849-1-wu000273@umn.edu
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Qiushi Wu <wu000273@umn.edu>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/iscsi_boot_sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/iscsi_boot_sysfs.c b/drivers/scsi/iscsi_boot_sysfs.c
index d453667612f8..15d64f96e623 100644
--- a/drivers/scsi/iscsi_boot_sysfs.c
+++ b/drivers/scsi/iscsi_boot_sysfs.c
@@ -360,7 +360,7 @@ iscsi_boot_create_kobj(struct iscsi_boot_kset *boot_kset,
 	boot_kobj->kobj.kset = boot_kset->kset;
 	if (kobject_init_and_add(&boot_kobj->kobj, &iscsi_boot_ktype,
 				 NULL, name, index)) {
-		kfree(boot_kobj);
+		kobject_put(&boot_kobj->kobj);
 		return NULL;
 	}
 	boot_kobj->data = data;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200618012600.608744-91-sashal%40kernel.org.

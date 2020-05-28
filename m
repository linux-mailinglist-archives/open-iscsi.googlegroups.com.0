Return-Path: <open-iscsi+bncBCEOFWXG44MRBJUR2T3AKGQE554SCDY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5691EA55C
	for <lists+open-iscsi@lfdr.de>; Mon,  1 Jun 2020 15:54:47 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id l4sf1430461oif.5
        for <lists+open-iscsi@lfdr.de>; Mon, 01 Jun 2020 06:54:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591019686; cv=pass;
        d=google.com; s=arc-20160816;
        b=uDNJ6SRtp5ZbDtE2J8X6eBiyC8+HZKfdcg87Qdx8g4EX3mOnwCV0byXsXYZa+NQngj
         tWBYeYPTepWgcUfqdSBy4a2QdKWC6/sbhqLxmmgm3+0F1C45m35uX4VdbkDTRXWIpDDg
         sXov2uqm75/k+g+rJM+sHACYnM/nMARXFqfFQv77pHY0yjwtB6v68EjhLBA11SsvIUCF
         hQpTFSRfoMPenGcXhhiOAMQdvV6LhSCov1eqhfADO6im6D0k0ViFFsifH2CULLc9QNXJ
         dur8gepp5WzgCFu7GX3fI0hxM1Qp0PT6DnWWpzaxRkfThP/Du/pMi0aplUTDbIbt3/BA
         u2vQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:dkim-filter:dmarc-filter:mime-version:dkim-signature;
        bh=jNZ3mrwdGuW/rP4zejc9lQV5rtybr3Mk0xqnw0qQWj0=;
        b=VKv+oC1o73sfUpu1HG3aTZWzEnUcQ/15laNkzP5en+6mVbGOxylZ0bo5D/cvpSHMOR
         Tc4pM05368uBy88UnRChWvu+F6LzZWQWwRe1HqMAfW5SzXL1KbwHBfPgElAtlDx2ddGm
         nvh97IyIf/V7OzdIlKUkFCwMmwsz7Ev0Y/sOSpDx4p0YoYLY+VYJz+x49QslbfV4mllr
         9DGEzeafyb3knQgYr62LknrIcPokeHt4vsVHYF3SwP/8ATnpH/FVb0+YsC4z8meKYjRp
         I/pmk8AauH9PVEjc3HhmDbAUt2nWhWcKRQGH9Yi0mDNFZUpZcVwTKHoaJ9o8wrrTGwlB
         A/Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@umn.edu header.s=google header.b=EW9a3uYA;
       spf=pass (google.com: domain of wu000273@umn.edu designates 134.84.196.205 as permitted sender) smtp.mailfrom=wu000273@umn.edu;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=umn.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:dmarc-filter:dkim-filter:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jNZ3mrwdGuW/rP4zejc9lQV5rtybr3Mk0xqnw0qQWj0=;
        b=NVRB9Xy3lRlJ0M4kVDQVlNxtBQRZ+EoBPurrozXuqb0CkWnnFE0oGdv15egYHQNflg
         nwbyrasN/QR2Px9/oxI66qjTILAfzPZnbTH/lucFCIplDVxosSGChQugY0dmopUzNRwR
         NA7ePBmdVlNfrDylsRj94cme2OF+O1D9CPrpl3Ict15vVpE+gf7Fj29LPp2Kx1ykHG3f
         qY0s5azzUTeMhy7/omw41a+3mvx4KyQ2xd8nH2JwDMBiYPUqQSxEMf+WvQlkR/veQo8n
         WaNGCBtNJcKpO24XpB+Z68vOZwZpXMaYxmrCoU91fh84utJY2JogtVLb42N291wnOMFZ
         d/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:dmarc-filter:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jNZ3mrwdGuW/rP4zejc9lQV5rtybr3Mk0xqnw0qQWj0=;
        b=I9GE7jvO8WhLd5wgcj43DCa8SSm2Ab5UEN/3l1WcZWeQho04w8oAGY22VjbPMU7oK6
         o+zSlafRmKZuf0XCayGA7gOjAcVhHNQ++XINX7ZE46CWfP1qkANuhRUPomASpA4qOIMi
         hZuDkmxcJp/wYiVJLq5endJ8g3T5Bz4OKKZt3X3vxgkYsN2oaglKKP2uBFTXIwBs82Zh
         bmZ6P5Qfkl9pVCjD/TaefZKK4lNx1K5zAUEwCUfcbBJ0qeFVoYAqknjaGpxNoH39bDKf
         zEAFeyj72huaciaISwd+h3n4f1Pk9WAXQlndQ7vjIMX1A0eKRy4ytKWJFNJdUp98pZ9b
         EHgg==
X-Gm-Message-State: AOAM531DV+5pqAb+DvEjX31+KYTK1bsDcDp3NYWMsawRKMhoIQ6zbUoC
	TcCubyRsx/13JYWBQZ+WgsQ=
X-Google-Smtp-Source: ABdhPJxWV7Oi5xkgILQUl68HRe3KEys3VttDhXtYg8Ac5eGRSdAa+pwHIZ7PsRTDuB5HHMat8E2zIg==
X-Received: by 2002:aca:3c07:: with SMTP id j7mr12569086oia.140.1591019686369;
        Mon, 01 Jun 2020 06:54:46 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a54:460f:: with SMTP id p15ls2539419oip.7.gmail; Mon, 01 Jun
 2020 06:54:46 -0700 (PDT)
X-Received: by 2002:aca:4a50:: with SMTP id x77mr14416139oia.138.1591019686188;
        Mon, 01 Jun 2020 06:54:46 -0700 (PDT)
Received: by 2002:aca:edd5:0:b029:ae:524b:3039 with SMTP id l204-20020acaedd50000b02900ae524b3039msoih;
        Thu, 28 May 2020 13:14:02 -0700 (PDT)
X-Received: by 2002:a17:902:a502:: with SMTP id s2mr5344005plq.267.1590696841659;
        Thu, 28 May 2020 13:14:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590696841; cv=none;
        d=google.com; s=arc-20160816;
        b=EZgRkRmrQLEY0Rec318VQn4Nx+ppvcr/OymWFNkqfFa2pBAv/5fTFhsMexNE+mBdI7
         uT+tb+jbbdE9MGUc7DQTTnSuSPUR8T97qqqFACVkJti1GfignKhsmAakE2BZMIYgAtcZ
         z42JxcOnVRtNFSPcehEAp8YHaWWG+yA8U8dLBtUEY/sibCZ39lygw0Xy2BP+HA0VPQHX
         /Nj8foCOQDTW/s2FOZAsujZVpg6m/FRprm1bQ6a5ADoACfI93UtTT+oz55gUHx/KedQ8
         39DqefJmx1Q47wN/2DQSSBQVKl82FId2dg0k/ejZyxyKdbsIornudphHYhqscOmkVkuW
         037Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter
         :dmarc-filter;
        bh=U7D66rZ3bV/mdno+N6Y057Ta6Mf7fN3AGEm3ICQ61Jg=;
        b=06Dktamas0gUUq1uzeXIwZr4XLkvsR/HstZfCECgttDJLQ7Ats1O/DOw24V4OUBhHj
         tHndDgCMEwjn5qr7FgrduTh9XufCNzGlVT9ACdjlGn3ScCiE6VX0flKPZDKSsmbWpx5+
         99gusEsYIw9kAlJ8df2Kg5u5n040Cu+A1ETvTW21hRTBYQ24e46Cg3XKLLeoT1NkqiVM
         s0blD0LeBXyAaU6Q7YyWXn0gq5I3w1M0JOrL4xV/nZ0vxnrgVteqR7AslSd+xHkSSZ0t
         db7kIMSBL7I6bA/hXSoFPBFqwVvdAURiH2HM/NywPMfiym+JxgK/geCvALU0eaf6vVbt
         FwGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@umn.edu header.s=google header.b=EW9a3uYA;
       spf=pass (google.com: domain of wu000273@umn.edu designates 134.84.196.205 as permitted sender) smtp.mailfrom=wu000273@umn.edu;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=umn.edu
Received: from mta-p5.oit.umn.edu (mta-p5.oit.umn.edu. [134.84.196.205])
        by gmr-mx.google.com with ESMTPS id kb2si315919pjb.1.2020.05.28.13.14.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 May 2020 13:14:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of wu000273@umn.edu designates 134.84.196.205 as permitted sender) client-ip=134.84.196.205;
Received: from localhost (unknown [127.0.0.1])
	by mta-p5.oit.umn.edu (Postfix) with ESMTP id 49XzRs0VCDz9vC9P
	for <open-iscsi@googlegroups.com>; Thu, 28 May 2020 20:14:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p5.oit.umn.edu ([127.0.0.1])
	by localhost (mta-p5.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KmBNr0VQi-Uf for <open-iscsi@googlegroups.com>;
	Thu, 28 May 2020 15:14:00 -0500 (CDT)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com [209.85.166.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mta-p5.oit.umn.edu (Postfix) with ESMTPS id 49XzRr5tMhz9vBtF
	for <open-iscsi@googlegroups.com>; Thu, 28 May 2020 15:14:00 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p5.oit.umn.edu 49XzRr5tMhz9vBtF
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p5.oit.umn.edu 49XzRr5tMhz9vBtF
Received: by mail-io1-f69.google.com with SMTP id t23so20091460iog.21
        for <open-iscsi@googlegroups.com>; Thu, 28 May 2020 13:14:00 -0700 (PDT)
X-Received: by 2002:a5e:9b10:: with SMTP id j16mr3809160iok.49.1590696840391;
        Thu, 28 May 2020 13:14:00 -0700 (PDT)
X-Received: by 2002:a5e:9b10:: with SMTP id j16mr3809135iok.49.1590696840039;
        Thu, 28 May 2020 13:14:00 -0700 (PDT)
Received: from qiushi.dtc.umn.edu (cs-kh5248-02-umh.cs.umn.edu. [128.101.106.4])
        by smtp.gmail.com with ESMTPSA id h10sm3027690ioe.3.2020.05.28.13.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2020 13:13:59 -0700 (PDT)
From: wu000273 via open-iscsi <open-iscsi@googlegroups.com>
To: kjlu@umn.edu
Cc: wu000273@umn.edu,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] scsi: Fix reference count leak in iscsi_boot_create_kobj.
Date: Thu, 28 May 2020 15:13:53 -0500
Message-Id: <20200528201353.14849-1-wu000273@umn.edu>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: wu000273@umn.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@umn.edu header.s=google header.b=EW9a3uYA;       spf=pass
 (google.com: domain of wu000273@umn.edu designates 134.84.196.205 as
 permitted sender) smtp.mailfrom=wu000273@umn.edu;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=umn.edu
X-Original-From: wu000273@umn.edu
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

From: Qiushi Wu <wu000273@umn.edu>

kobject_init_and_add() should be handled when it return an error,
because kobject_init_and_add() takes reference even when it fails.
If this function returns an error, kobject_put() must be called to
properly clean up the memory associated with the object. Previous
commit "b8eb718348b8" fixed a similar problem. Thus replace calling
kfree() by calling kobject_put().

Signed-off-by: Qiushi Wu <wu000273@umn.edu>
---
 drivers/scsi/iscsi_boot_sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/iscsi_boot_sysfs.c b/drivers/scsi/iscsi_boot_sysfs.c
index e4857b728033..a64abe38db2d 100644
--- a/drivers/scsi/iscsi_boot_sysfs.c
+++ b/drivers/scsi/iscsi_boot_sysfs.c
@@ -352,7 +352,7 @@ iscsi_boot_create_kobj(struct iscsi_boot_kset *boot_kset,
 	boot_kobj->kobj.kset = boot_kset->kset;
 	if (kobject_init_and_add(&boot_kobj->kobj, &iscsi_boot_ktype,
 				 NULL, name, index)) {
-		kfree(boot_kobj);
+		kobject_put(&boot_kobj->kobj);
 		return NULL;
 	}
 	boot_kobj->data = data;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200528201353.14849-1-wu000273%40umn.edu.

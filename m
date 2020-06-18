Return-Path: <open-iscsi+bncBDTZTRGMXIFBBFEAVP3QKGQEGSP4UOQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B391FDBCD
	for <lists+open-iscsi@lfdr.de>; Thu, 18 Jun 2020 03:15:01 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id r13sf1902096oic.12
        for <lists+open-iscsi@lfdr.de>; Wed, 17 Jun 2020 18:15:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442900; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZBqXwEQxqpGaJDyTgJEB4i1t3MCphjdWepbqrrHPowK5YzpwZrkedaFB8kzBH+iLmO
         4FvAivK/Ev60IPrZvyHUd7IaYEjghxIB1XfSBHhTxmJZpHl5/5n9DxXz7GaRPnyjJfC1
         uiaOqq0nJhuUfq7L69T3vzsYPXFUYfTg7+xbHiZgkBAWsmHIcN7XuwJwtakj5svVrpyw
         oiCwGIo4xPVJgeLRJzDo5DCkwAmFOSSZ2moiw8RKeYOVREm7PrWBHoF6PQ6zPEkAqAzr
         +lLzEVyfu3YJNRwNwpjDW/qVXHOFs76EOO6607pbr3q+cqWdsEdjksy69Xtj5rB5KtGt
         xDfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=VVjPmGlPRdh8rbzd1JnhqLTx1V43IuA3rlQjtNXmpVk=;
        b=YTvaan+1hI6SE1Vyron+IzYwMJka7tj+VNi9K9eQg4Z80JVuN+WMlIT+khSvH6LDvs
         Yqx9IFvKCzs9JgZ3go0Cx1/lnD0rra+F9hW1Aez035BlZKqMt7yeBcf0cbLQB3UebUYR
         AA4l+GTK/DiNR6EaD44J6HnbfiTs9mGSbaRwN6Dc5dTjI2025tFNduCC3CAnv+Qgo7x6
         JgNEO4vjuGJBCYQaB6ji/cZWJKSCWHDqL9ODDmzg8KPAUgg1Z6CZ2GUYFV8Dr3yR44lk
         QWzRa3ipJePDwmp8Sg6FNBsaLtwauhRK1oWOFk50MwhiRDBYlNi/a2dQrpfMhKvNB5If
         uq0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=X0NQL1SP;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VVjPmGlPRdh8rbzd1JnhqLTx1V43IuA3rlQjtNXmpVk=;
        b=QVXBhM1fVbwC32NYCsa12x0B/lDwcMA2bZ837mo7Z0fRu2vPys4Et9Vv0vFBIS0ZVs
         ahCt2JC/1NYP6jnyIy/3dT1fjDRB28rLWYSCg/86CvTMKIQcElocvF+CsBpVAxQoZ1Ja
         Ro0389BSCd6d9+9DhYqxSn6l016l4aiur7TIbgpjCCWoiXkl/13kqjw1VklVlo/cT6HV
         CxV+mKls4+lEEQLT7pxaWAhEpRi/muybdm0Xjx77bWP2Cmf1nG2IZU64dH7qURY0b85Y
         3o36HIL/e3s92bIGklpsVeQ8yp/LrX/llKQITv/9YYy6VXtF1jwnNIdltRDTIsMHYPj4
         oyLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VVjPmGlPRdh8rbzd1JnhqLTx1V43IuA3rlQjtNXmpVk=;
        b=ebFHF5MCfMdKmqOb8jB/4VJatSxGTBvEzn7V7Nwivw87BbZd3Q5BWX7qt8B680+NFS
         xDW1m2yURyHvJ6qc3LdoaH6QDy+f8D3r9Jk+M1KJEvMxhVLGS3NrkV0BxIRQvxN4WNVU
         rqPld+cK9ov5LpEqKcc46uQF2EC9CROzx7YZwPdq7F4wqoPpPGKqKq6Y8qhRFfCOE0j0
         Lom70tNloTnjKMPthvzVWA0qEpvNtPdHG/a/eUZIigBpRMyE37pvj1dzEdya03fss6rR
         Q/5voalgTMSgMTc5WKngGmNT4lcrWI8tmDt133JTJuLkeSn6jBxXP61mL1dUY8AT3+vI
         LgLw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530EMg32KkJ9Sx0zShtBo5p/m8F7IZ050ftVVhdobRV1dOu5azSp
	cfvvyML9p3LKq7BpS7iUdSs=
X-Google-Smtp-Source: ABdhPJyDneX/U4mqaUmsM0YCSvPTpG35oaUzbGpHMaKd3dBGQvwbnZX87mWb2AXFAzPURrDldOO6JQ==
X-Received: by 2002:aca:1a07:: with SMTP id a7mr1143073oia.163.1592442900361;
        Wed, 17 Jun 2020 18:15:00 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:1e19:: with SMTP id s25ls932341otr.5.gmail; Wed, 17
 Jun 2020 18:15:00 -0700 (PDT)
X-Received: by 2002:a05:6830:18db:: with SMTP id v27mr1512171ote.75.1592442900059;
        Wed, 17 Jun 2020 18:15:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442900; cv=none;
        d=google.com; s=arc-20160816;
        b=jLQbyxjscjioOo3rKMNqznEbtIBk1FYOKDpTFVyKz30M/Cxe2m+/aM7l2KxaZmEI8/
         p6/c4VgQu2r8nevfdtI4/j6BulVpKH4m7FCOct8+E4M4xNa5/Gog8XNQ6+UMMOmKwszZ
         hMbwpoh9Kq+jgUsEzojgk+iUaCvcaJJjLc38hyOiXkX1RELNm4cvzIwwcAgdyirbO9a9
         d1pNawGI0U9KjCu+bWT7E/r7c69F4x18sjBZ+rdo/YC/hTNtw3+whunExg5d+KDtSu4w
         fyvp3xZHYEkzsNJs1FHkLPE95AbJy8dmWHTBRie0S23nyiawgUHyD0HeZw1O/sZQ5kaT
         E/Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sXcvp4UUDv1pfW0bYdc8+acZvqpooyfsyW11LX3obCg=;
        b=qVrzZ5qAyhIjNVc90vGlDKbvJFrtXDNrPV/EKAaF2ESSGx4PwFKmWZRlibuJgRRQtE
         4qmj5KeHyFMn4NkZierDPKX4dqhPNAorQP7TSKiNg6yaO5IDEfVa9e0xoEFL+faka7ky
         mhP7uEW1nsfQYxbChfxrWP0OKveDk8MDssOCxjf9dBaCzoE02nX28/lwK5zrEbSuElXk
         0oLn6ADjqIl2voDYNL5V+q1gh7OwyRrd7uW1zgEDnzQcQsE3At5uleHAov+bagU9ejwA
         S4Hdaoaczi0h52v9JLCiStziyY0ViuE4VbdefV6R80uX8a6xZcivh99k3Ri42uUEKuot
         ZhAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=X0NQL1SP;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f133si79842oib.5.2020.06.17.18.14.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:15:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6B21221D7B;
	Thu, 18 Jun 2020 01:14:58 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Qiushi Wu <wu000273@umn.edu>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 320/388] scsi: iscsi: Fix reference count leak in iscsi_boot_create_kobj
Date: Wed, 17 Jun 2020 21:06:57 -0400
Message-Id: <20200618010805.600873-320-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=X0NQL1SP;       spf=pass
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200618010805.600873-320-sashal%40kernel.org.

Return-Path: <open-iscsi+bncBDTZTRGMXIFBBEMHVP3QKGQEKKEAYYI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 477AE1FDDFC
	for <lists+open-iscsi@lfdr.de>; Thu, 18 Jun 2020 03:29:54 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id p22sf4709610ybg.21
        for <lists+open-iscsi@lfdr.de>; Wed, 17 Jun 2020 18:29:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443793; cv=pass;
        d=google.com; s=arc-20160816;
        b=sa8BUB/bbL8njcQGjEFDb41RDjMObdbAGidJox+wYuLorWUlfajltnIgP8ogjdiGBX
         TCCkvwylNH2zeE9/rQZOrG6RKf1fkcfQghS+3FMNrg0u9ohOh80o3aIGKYX/HRHtYr77
         +nEzxCWYnOT5HHzd1VFnjRObY5c7YYnoRYJavr2TCzeuWKqQa7D+zwHhXjRzwmcHOiib
         GIm1ri4voUpdc5WvCNK5rkAwfVjUat6fcWP+0FdEQXCKutoqvmoLaxbJLdW82M3qPRPu
         ByCoPltPlRhQztZAqX8SCxOwaIzYIU6n8avBBE/KgKR/CShZvRfOICLAHaxxIzbJ55ic
         wsnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=RUNXOmksIxp8gd95IWfIw9vc6wyeQPWp0VgVWBxT6SM=;
        b=lxvL5REHcsiYyzsvCV8KUPwZUy7jcFA1sD94LyHpFqFaqOzZwwgv7zr6Joc+Qo0xyg
         sBDEzrMnCwqAxnhjYDZIH/vwAjlxu7506EIL5xL/3b/xQEy3Wa6JVfhBPt/h4jble1cc
         fpFTB0doRsnz8BhlpwgQM0qLnYuv05zOithitwNFyIOdwmwzGgmRhQGGkEhxsc45y6ub
         CKYHp26aZ/A/7e5AsgX73LBkh4LQjuU5/5WdXTvQYGGOC6DX8+zjjDkQD1qS5nmfTrxC
         XYKnz/XjUTPzwBtnPkCPUpI6qZHWPEcQ8cVXFlU6uNIh9TNIDlT3ZNb3dMgIVpyXufeh
         LOqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CWq30qpy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RUNXOmksIxp8gd95IWfIw9vc6wyeQPWp0VgVWBxT6SM=;
        b=Tlqi4V03C+4xxQm3RTC+2iuj/B6TWIfjs6oZ8WSUbn8/8jtx8mYWAYGMK9A4ZZQQP4
         5UsM13pFMnwToMUqLzlGeJMsbgLtVsiu1Q1R3yQY215+LRenyUSrRJG9Idyc+60OmOeo
         77FqEZMj9VNX6KBDFMkr983iis3B9wUBuxzIcltrTEDX4cuweB4AUyuD2z8pU7pemq3J
         BN/emgH8aYKavP0hynapRnX2eBILwz2DIXD3TLiNUNPWsp9YujjuORTcxBHTfn3PHbdw
         C6QT8g5PEn1CwGsOeA/jrJzynuQfRvYuxrmv0QdAwnpL38MRKXnpMmv36VGWwpERjN0w
         52oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RUNXOmksIxp8gd95IWfIw9vc6wyeQPWp0VgVWBxT6SM=;
        b=V0X3h0IbPFSoWqEEiCDrlMLRNOPf7XXLrDRrLIYHQ9BSP9vtylYLei+uR45pvRnUAz
         DjrPqvC47PBLr0qlWHvP4IlaTVNth+AaK3NUzXs8+1G72bU18dEdUKWaixcEAV9znx9p
         iAR4qAsxGNaQ9pWFZc63YyQbLfuoWgnzE4wLJMoO9gSSLC3gZxhOO/Pbr2iJP5OLP27W
         ydPgq8+a0nMXSQHu0E3QWovhtLQDwUGLSWG3p0I+JDVjvj1JSYyt6T4pWtpNOutR7oRE
         C+z0kO+1JCSqYDErjAgFcEr8hsWQGgXX3vrEhFYBgKBExriDHsIxgU3TVYC12Egu3cBW
         qV6A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530+rQ+2YWED0LfwAd/ibjXqcrrIF7RtQh28K2gf9hv7yg9vR1Z2
	InSYiPbozCaRrhzSlZOpaeQ=
X-Google-Smtp-Source: ABdhPJxs/YdHpEESsRaqfrvQEGawKyTtcmt6koDxcvvoh8bXfZ4J2MhAnLe4SqliOB7qpSTT91I1ZA==
X-Received: by 2002:a05:6902:1007:: with SMTP id w7mr3296845ybt.217.1592443793314;
        Wed, 17 Jun 2020 18:29:53 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:b18b:: with SMTP id h11ls1665398ybj.4.gmail; Wed, 17 Jun
 2020 18:29:53 -0700 (PDT)
X-Received: by 2002:a5b:c44:: with SMTP id d4mr2659279ybr.455.1592443792854;
        Wed, 17 Jun 2020 18:29:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443792; cv=none;
        d=google.com; s=arc-20160816;
        b=NZYWnJRfH3lKjz1RU6pW7ZImgU3ON862ZH8prz9LZTkF4efItsu7XHtmAvGrHgjLpA
         C4tmUN4H1KSMHVsiVl2+zVjQziCeJbnnz70T9o1/tflw42VhUqjU57e3hdbdYxvDtP0q
         28+nvBrllj1fus37QHDC7Lgo7VvZv/PF9yHCoTDsg99EV3lr2gzuKTx9y95PWikd+W5Q
         5u7bmCO7Y6WNqGwyadbYqUKZ0uQfqw0ttGck/n//cfG6keMK2N7i3LlZIjqQt0EAdiq8
         q8zpSXmvvG/zjXrA1lIPXmmrAtF8QBDmtf2qVrTYfvZH8WRouoDVJ2w98Ws9aNfWSKgh
         4AHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1WVU3dHVbFQ0IJWYZMoO8IzG3PFSyFeafkQcOlpGtc4=;
        b=tEgPQy5gHq1eMfQL+j8mPNDEeaWoUc6z2eLei1lPnGe8C8SZUAoi+ViIxVGepiMdWF
         wm1GfK134gFYBnjnsKUiEVT+v2GZezuyUFcOPPr1BqboFTC30uMW3V7jO8w/HaSFmruq
         415sknfZMZsQZ24VUtM3mVKM5q5vlVX3gJTsnmoppTPLsfoKstpZ02gfIEPCpgRrCuzD
         nY+7HVBa+m7X8feQHxvVEoyeZwETXPWN8aXIy1iwLeHc6MF+fHsWnNeRSkLrYEfuH9M4
         CgUyD77989RPHA3JlNJgXVjtK5Kbw5iEFTSPe8pR6dgFLr2BO2dSxfrAdUpP1/lfG5vq
         X6nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CWq30qpy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a7si123299ybj.5.2020.06.17.18.29.52
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:29:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1A0D722245;
	Thu, 18 Jun 2020 01:29:51 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Qiushi Wu <wu000273@umn.edu>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 72/80] scsi: iscsi: Fix reference count leak in iscsi_boot_create_kobj
Date: Wed, 17 Jun 2020 21:28:11 -0400
Message-Id: <20200618012819.609778-72-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012819.609778-1-sashal@kernel.org>
References: <20200618012819.609778-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=CWq30qpy;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200618012819.609778-72-sashal%40kernel.org.

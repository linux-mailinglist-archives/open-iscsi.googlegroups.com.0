Return-Path: <open-iscsi+bncBDTZTRGMXIFBBZEHVP3QKGQEKS7XAJY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id E658B1FDE2A
	for <lists+open-iscsi@lfdr.de>; Thu, 18 Jun 2020 03:31:17 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id a5sf3300429qkk.12
        for <lists+open-iscsi@lfdr.de>; Wed, 17 Jun 2020 18:31:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443877; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jnb07m0abdNZZ7bI5MYfQyFQK5i85xlIHcQEHGQ0hXXFybhTjc6lsDMtfuHayTmGpx
         b9mLHB7beOmbt7lJZiA2wkz0niT0UImYQueKzuCfTU2vxt7dAKDb0diCP8sFC7qJnmcN
         1CacdSTxQBNL4Y0GKX0HArj5GkefhSdZA/wghDqf0uSht/48I7J3oDcIx3bdDEpC0tJj
         UvuR5hDBzwH+D1ye7pBo0q1U2bLBHwr8QdhUK4toOpIlicuMaaKRlyKmXi3ZOvMEGvP1
         wx4ln/h7IstOcpUVJV+fHnF/el0XwaDScYJOnarQPjfzL3A5T9IKi/Zzemok408Nj4Hn
         h+jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=wvu8wyWJIT66pWujoXOBo3L//VIaUpVQY2KwtGhW40g=;
        b=LSv8v/RZQb4fybw7LLZDF6sM9f9DxcWZa5SB/UREy11zYPM+2/GG+1xHuIZCk1qBvz
         t5f8XZeG1qaRrg8/Smiw1uHLuHYTN0V0xCbGzzrZZjFI5UfbBumv/VoNKpiKYp34Arix
         k+1G///xp0C1vuy396I2iSjMGvUK5fgX0+4RitT1WrNy59y5sujsOYlui0SX6CiceZbE
         ddPWfPRMB5+zsYPpfFIEgxXouvCN2hcAfK40mfZmfyXpJ4zxBO46rjIuTgNlx9hDUPGT
         pCzU+f9AySwnzBnXrsRnvU6FhBRqdgFs7CCyMYIffe+QpQ3/I/OG7WxRp/FI4B9jjPNT
         22Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Hn/SuQ7t";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wvu8wyWJIT66pWujoXOBo3L//VIaUpVQY2KwtGhW40g=;
        b=Mlw205Jtls4WDcUVg8N49i5st+pzWzf+ePOAhsxqw0UO7wTRhmM9tyU01ODfov5yTU
         xHYdXFDkIACbax3ixzq764vRRfbR54WQ2OmEJd60mzL5RoePhI3mVx3DJO9SxvXl3fMx
         +H7vTqH1wYKheQ1+nHEur6saRhAxeGNLOXgJhVZ0QvKWhinwc3o9G+ZwrH47W2kkJulr
         YCK4SKdkPZwfjEjYP3lDwg/0UU/zoVS/RW3uVJupIczpiMQBaFIadg5P4BLk1Qgitmvm
         m4vvmY1jIgjAObdE1S/RqCjdvXQr+dP76yNSfisbudxtvg8BSosIUwYTkvMnnf79n2CW
         U5xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wvu8wyWJIT66pWujoXOBo3L//VIaUpVQY2KwtGhW40g=;
        b=O0xG6ZYZZ2SfG1OKKKvdb3su/KXF/J7LvC9aYRQHUKH7p/Nq+K4W2L3etiLyAoXOKn
         CkusUsmAgURHAzBZK4g8iHQwa1wpw8nAWLxJ7fQUQ9gXAY1h2SJ7A/XPNz+UU0XjJ+S7
         aC11NcT17zNQLmV3ifDraNMJ56bvxHH8Q28RPmI4klC8bwKne9WXa8dUUBaFh1PNS18q
         qZTmWdAXbrii46BHV01NDUtC8+apatL6xq5rGvNBiWSZHMsrHqK+nJ+tNgVnPBu1ojt4
         9V6Oblad/e3v5E46sGG/x/xxMGg2YZ0Lz1KDY+v1zj50MCZ05Ki694Uyde3V7BjrFT6k
         /yiQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531NTkV5YV/Rjk5lfpP0KX1a6G2h82xvMAXYlUamm8QiCXHo/qD+
	soi9pGDDIOt2IO4iCNhLFMA=
X-Google-Smtp-Source: ABdhPJx5xet801g+z2WGjtW4NLQbIOsZ+NPK6gguxfEE+vR7Dw0FZXHaW+lvyDw6iQWc7IV0md/twQ==
X-Received: by 2002:ac8:6a0c:: with SMTP id t12mr2029639qtr.370.1592443876944;
        Wed, 17 Jun 2020 18:31:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:78d:: with SMTP id 135ls1956375qkh.8.gmail; Wed, 17 Jun
 2020 18:31:16 -0700 (PDT)
X-Received: by 2002:ae9:ed0f:: with SMTP id c15mr1488419qkg.55.1592443876653;
        Wed, 17 Jun 2020 18:31:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443876; cv=none;
        d=google.com; s=arc-20160816;
        b=ZYGUzIX+Z7pY+FFCgKd0njGS4ckJGRAs3AiCVGZ/H+Ga3Kbmpc+i98N93CbLnRknq3
         G0fgGc3RddE68tgfJoyF0Rcb3YA+UNsCGkofwjC6dgyBC5sjOig9r+DFRO6Vg0QeBVM0
         jw9uGpXwm5/7TMefXNzivqjmd4xpr1rVfiHn/Dk+PQVk8lv9L2Swx14LyGs1HptU3l9n
         3UezAcKJIzqBeXPVJ4NIMhxUZcf8zjjCUdTUQo81DqPUwxvFwLGV+DG6B7fT0hpiwGVR
         EOOfuzfojOqFeidtegWqTW84x3Od7GL8dSyYmpJwJ1i5eqJEufIYm+dZQ815eawHezS7
         c98A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=e/viXeLriqv7tzonfUANEsj8wEBZkqqtDoL0VjSQz38=;
        b=ReCqFckCJVrqGlaELcO9sxszjdH7xaTDPxmO83Q3YTsWcP/mwiYDspCG0XAWUjwAbF
         MxaUjaX+p8Sj3wF0Bn374MeeSf4bWMmx2KheBPMNr5fFtmIkvcPDO4NtKCX5GhKfayt8
         HEf7ckDpMa+qZkgxyp6OfH+TH73++lCCTl+0zpZpc7WD/1m1rbkrfQ57Du50RsZB2tB9
         CO5QYx8+mUyo7Xhkz2/UQQpK1dzDANNcTriwRc5RyTCaY+TpXeGkU0s57brWxmPnmRmF
         zEChrNic+rIUR/9E+Y8mMkGjuRVn4HG1BlNvb2B1BVXejqTalAFW4VXuvgcIzHb1JuoB
         UuKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Hn/SuQ7t";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y21si106342qka.2.2020.06.17.18.31.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:31:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DF8F822250;
	Thu, 18 Jun 2020 01:31:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Qiushi Wu <wu000273@umn.edu>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 55/60] scsi: iscsi: Fix reference count leak in iscsi_boot_create_kobj
Date: Wed, 17 Jun 2020 21:29:59 -0400
Message-Id: <20200618013004.610532-55-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618013004.610532-1-sashal@kernel.org>
References: <20200618013004.610532-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Hn/SuQ7t";       spf=pass
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
index 680bf6f0ce76..476f46aad54c 100644
--- a/drivers/scsi/iscsi_boot_sysfs.c
+++ b/drivers/scsi/iscsi_boot_sysfs.c
@@ -319,7 +319,7 @@ iscsi_boot_create_kobj(struct iscsi_boot_kset *boot_kset,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200618013004.610532-55-sashal%40kernel.org.

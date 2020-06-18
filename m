Return-Path: <open-iscsi+bncBDTZTRGMXIFBB7EEVP3QKGQEBM7IHNQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1821FDD39
	for <lists+open-iscsi@lfdr.de>; Thu, 18 Jun 2020 03:25:17 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id r194sf1065513vkd.9
        for <lists+open-iscsi@lfdr.de>; Wed, 17 Jun 2020 18:25:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443517; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vdsjknvt0FC63lDDmOeWlJx3aLzkuGm69sZvxgi1t+3fgpkqhcJpmgNkdvdxQfGAbB
         Hrjy7yhOswUZw4xfAm1iOMLh8S4tgW2+dGOuCKmcArSzPe5i1QGavWqm6OUkDtDs6mfJ
         7NTr+ne7wLRkrXcjHHbJbEWkKUAj8Y4ev1KO9Pz4qzJexk1ryjoMSrtpWxfCm+dHEcN7
         ZUSUDIdYQ5ot2pPoO8Rrh4Avt/9ADmVxpg3kPaViCE3B7u1Mk+Qqt4n/F6ALnFdV9gw1
         9rxo2PmhGhzw+HxyBa0Js2k3VDJGl3eoMnXKmA7AKyfWHiP2HYte/fXqUovN8SICih8f
         tgcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=G3BAIACULlkddfKMzC6ltJzHQ924crrWf1LXX2dT3hs=;
        b=0ftClemmUArsq83K3rLNSw+9vhO9hR3jv6jsIv67+Twf2f6/YqD+6uMMuu/Y97B7SL
         C8KblOSudsSd2cDcZ5R+zD3AkBgEEAP29HP29Awig9W+jC7dpsQCuiWvUModrsd7hfbz
         Vhb+rQgpBca6pp9tZeOzO4ipN6U+T7NMpdwtc/Dpsko93YyHIEMeFwOOLSyTO+fL3LGc
         hxSSrqDQsX3TAjS7YJNb9L/8gOBMNizFhcly5BDv7DV7RCzL2Knqwcq0rLgZyEobnrKr
         e1SX7zZHxz5zGN5Eh9Cpo1GuK/2AOYFMAdEX3QtNrbPnTfEH/yPI82WpdKaAo3bDtfR9
         ajmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jV2t4XUf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=G3BAIACULlkddfKMzC6ltJzHQ924crrWf1LXX2dT3hs=;
        b=rFkSZLg8QQEhV+tgj4n8sGv88g7fUjfKnzkadsFeeneGGw33AeK+8b6n+4vZknfjIq
         Z4VQYolLz5ohJwt0xFQEC0yUaPiGvsigdfhKZkdgVjfq6VcKB+OLfSdD8YMHdUAfQbUa
         PEY+TZkxpfI2ZGkMjGNPgoD4Wjsd54u/4FWLM4uKjJb3ORh7+BFaDxxAxqwT1aDRBha9
         l2J8/Ev7Q+1RBVkHXamNXp+WhGGaj3+YfjjY/h/FVp7youEDKLSYkk/Lu9vbvAi0AUkf
         2pOEfZE8TmrwKv//Y8+2oNHvrCLC2bS+Eu6TbYYde0y0OqQN2uff/+s6nEN7gIscBtXy
         sMdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G3BAIACULlkddfKMzC6ltJzHQ924crrWf1LXX2dT3hs=;
        b=FoW1HlF8lG5PLnWeHtv/7VrE04zCamghPNIxEclspGRBF451k4UQof/umXN5rci5ia
         H8egkRKcjl6hUjtS9RZZZuOwQkm59YMWgQqNYWR/iBciHfIUkVS6+MVFWfgWEb1CORZT
         L6EQxGYP8EyaGTwhvKQtWqkHIaik0gUXozSI/lSDV0J0iunRBHuq0GdbcuF2AtU4Kjth
         UDLIHE5pdt33a6AEw/ljRuBAWjaUcb1/4ie3tDlV9BySpBhHOqUpCaF4gF2aq++3bOpD
         h2ItlFeiaSWKqTby833uWxuB5FQfbWkayc0LyB2mjZjWacfbbOonZNwuwNztCHO8g/w0
         6wmA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530kCTkJwJOU9BSq3f+kOXgq4P/rH8uqMC2NpIEUCClXMR3GBb/J
	fYa31QcLsq8hxRz0RUYw+oE=
X-Google-Smtp-Source: ABdhPJyMLd5Kdlx/1u4K5qSKvQ8mL++k9Ji7YlAxJdiZ7BTiY3KaMC+YpQme6ez7yJCzkV5cYq0kFQ==
X-Received: by 2002:ab0:186d:: with SMTP id j45mr1388516uag.104.1592443516963;
        Wed, 17 Jun 2020 18:25:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ab0:5a0d:: with SMTP id l13ls285789uad.2.gmail; Wed, 17 Jun
 2020 18:25:16 -0700 (PDT)
X-Received: by 2002:ab0:614a:: with SMTP id w10mr1352865uan.35.1592443516551;
        Wed, 17 Jun 2020 18:25:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443516; cv=none;
        d=google.com; s=arc-20160816;
        b=IQaiydYeGcApJvu0yyGaC+dktwcWR1qN+BF9CXjh3bBGX89fSBAG2rTPGxv3hSh2IW
         2IbHTuvQWXjrkd+b0m8B8lkwYOFaaLIeoxf7WghlQGUeO1S3eml1yQsISueZkTmZOeTU
         sBMdVYu167TcmAbeHrFNfj7jcY/PVkmb+1DzfJJUvdz+3w2W92kC8Ssq7fSWoVX5Lk/m
         cNT83Gj03MMurcup781vfUVdG9nm/LwA40R4thX784pggn5XPEL8/hSPldbVrSYu/1Fo
         ewAC2VI1joTNGAcxsAmR1uYTFvxJo3moQ8U4Na6uTtgeEKu/lw4oVarpkXgpiP9OogHM
         VLYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1WVU3dHVbFQ0IJWYZMoO8IzG3PFSyFeafkQcOlpGtc4=;
        b=n41hOAtcpswf+G7RUC8cPnGZplxjW1fvt76xOumcaV6U1vJiFoKN0biWG4yvs54HHT
         joKugb2zaq3hOQNj7OF/j9MNMnk3aUVBgLzBJxP/rU0EreRmIOoDtq3CwmR2TgcIJaiz
         KGfPxHxrCcw4m1IGsvo/rX67VPQn0RepG2mdEt1fuqtPLIPZLyVyLYsr/4S0eDrKYHLh
         MQ7U3buNgMvRIP9aCpWciMXsGsP+d7BhQ30odn02GqEgMUaY/0HXvFZnIaQATWKD2Ti4
         C7472jIlaVcDLcIoJHyhzlRPiAxw2FYJH3tiemoOGjlz1whPiV3PYO/JsNlE/NxpaYmo
         KOFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jV2t4XUf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y7si120985vko.5.2020.06.17.18.25.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:25:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BBD0B206D7;
	Thu, 18 Jun 2020 01:25:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Qiushi Wu <wu000273@umn.edu>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 139/172] scsi: iscsi: Fix reference count leak in iscsi_boot_create_kobj
Date: Wed, 17 Jun 2020 21:21:45 -0400
Message-Id: <20200618012218.607130-139-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=jV2t4XUf;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200618012218.607130-139-sashal%40kernel.org.

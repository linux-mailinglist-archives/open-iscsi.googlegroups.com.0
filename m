Return-Path: <open-iscsi+bncBDTZTRGMXIFBBC4DVP3QKGQEPGF6MEI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3768E1FDCA0
	for <lists+open-iscsi@lfdr.de>; Thu, 18 Jun 2020 03:21:17 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id e22sf924245pgl.6
        for <lists+open-iscsi@lfdr.de>; Wed, 17 Jun 2020 18:21:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443276; cv=pass;
        d=google.com; s=arc-20160816;
        b=oSpj6A/ORuIJBF/QZggIaBhs9dklFa0bczv0GbVZ2Ly3tCIKNG9N0QeoFcShtk9sY8
         yWh9xXfp/2OQdQlXQw4RtYaFXzXPI4W2nUSH+x1Va2RZ/xH8BUWc8y3WdcE69uSIc3Z3
         2d7F9klogHo6QceWPx+XoVlZ9D8yY9Hrga0+9lLiQTuw2YiIxy9Shk9ZYcS8t/pz0cLY
         Pa4EPxaacr/1rk0qXileDKEVhQe2p66zFVZFfaV/ZTlnHzx5Yz1gHgFF3waPkHeITcwm
         weF07RxsJmQaFSCLea9St1Urmr3ZHRK1m+3pBvmpQYM1dnSrpqttPU4XK49snDHhuwwg
         2FyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=qKUT7YfGRFQONXLW1AUcYtllfkJjJLV4aLZsgmiwiCo=;
        b=x4kDry8E12QDZD9eCz6133KyN5nYyMKpzJ3LXMlYsv+92erFXNk+lLXHRA/UEtN3dI
         ZGmFJcOpcBqj0k0gtRLvpcglQnd0/d3rxBDhwyVO0k49Y3U8IinwRPD9Xk3V3tz6hJeo
         FKkiQ1f53cxxl3omjTZKEP0JhS8pQEmvE1nr7K1vZflzxd6IkLthmjieCx638damNyJr
         RaE+riGz3hVQywrpW4BuDXY5kWuKq9aMTf+qoK779thEYi1IhOzARPjY3Y5JxqGrSwfh
         fB1b90304o89DX1CWRVt5NYmQJ60JmrKbsfDn52SsmMFbIRiWzZwapZEfJfEqtlQJb2V
         FcyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=U0IC52wJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qKUT7YfGRFQONXLW1AUcYtllfkJjJLV4aLZsgmiwiCo=;
        b=qqUv6jlK9wkVP+K4a1qXUBBDEuuYNR+C4OoNJdP8c1FyNucuJEICeOdxhg97cZRq12
         PV4LgU70TUKcJ1D4vI8JlOIUV5M9CLEp+WzkT2yr0ZLF+xp8+kXCUuCGQ5jRoP31J9cx
         Uyq4zBZOEXuvtX8s4lxUMYiO4944AvK0hBJAPPkil7RygPqJWCJiGDjscrKhJmwU4aUl
         /M2cWZL93KA3MUYZt6VNSUAY0rgXDnRt8kBey2+PclD8TtIjVdnFHEe6n+ZGzHu8fwp1
         mt8ty5c1jWjLQqFMGD9ik1AiUVbR6vJn66ixor2mM/P3XFr+pMHbe7ofd9GrbvvxgEIX
         M4vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qKUT7YfGRFQONXLW1AUcYtllfkJjJLV4aLZsgmiwiCo=;
        b=YeGMmqfAZvftReh8HOhTZ9yrn1gQkoqLgxehccETlPuHUBhIJRnVVD/D0PA4SPuexc
         TPCCya8rFLJTobDo6Q5ISZCqozBEnEspKv9a6Nsb/zz7TJpHqtBdYky0vJ0zRqSZRBRR
         U904sYt/1jvq4MZWS1+m1XJJpwBJjf29h/r8f5tfDpBBQ0ojzkpVt7EDIlvA2G7oUqOX
         iAawsJdzlE4rHpjvgFzFiEEt01EcswhMTmFRi6mb33cbn4nfgf8vPTIXXOMrDRhynv4+
         i6joK5osSgDVVmJu2ZWE/Ie0/HItUWGr2qi0kub22iZGea5W6NeQOf3yAqdXGJZodLSB
         KLdQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531mj7+Uj/v51P9d/W/bmgOsDgmrFswVDUJ+xli6nUPUNKRFRjJn
	VG0WBnbqXZQ7YVxzJxZxU9E=
X-Google-Smtp-Source: ABdhPJy/MbSnK7BGbwY5aj1AYIthFhP8o7OcK4IAgkkz7mzDQ1DcvCvTfeZBvG77PG1sgA0G6VwTtg==
X-Received: by 2002:a17:90a:b949:: with SMTP id f9mr1635960pjw.79.1592443275944;
        Wed, 17 Jun 2020 18:21:15 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:6b02:: with SMTP id o2ls1497695plk.7.gmail; Wed, 17
 Jun 2020 18:21:15 -0700 (PDT)
X-Received: by 2002:a17:90a:dc0f:: with SMTP id i15mr1656814pjv.221.1592443275524;
        Wed, 17 Jun 2020 18:21:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443275; cv=none;
        d=google.com; s=arc-20160816;
        b=nd58tIsp9mllhNNRvRkfgcP0vpVXFA/6VAgicwto5mlvd372XdioTOMjlAFIIZZWQc
         Fvvu+XnT93U7gq+w2VzyGyUXipIs9UX731g5XQi/QwpXBMC4T9Q25CiIHD37STLK4rs2
         Px7GKrwmat9EEQEn6GQcDfunwYHAuOVy8QDEWRgQ7vbI/LgcNugx2ZGuhJ8u/IBJfPFw
         JPlTZN1YR8/00H6O+t+LnGWXA1EB67lP5do+0vEPUi8KAqQHqJ898sK6BUxda1yK2g07
         CuT6xmC2ZAOY+fZpml6K4ILtZVjmjX2igkj2HbbZ2S5pPutGhl13SQvEiKOyedO/Yl8V
         Szdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sXcvp4UUDv1pfW0bYdc8+acZvqpooyfsyW11LX3obCg=;
        b=irDuBV1cDz7Aeyxl2ltBTevqYq1e7+2VEr9bMDMD8h2heI/fRSxbhS1yfukNJLnD6w
         1wPPP+guTqcxef8Sy9OUvqvMwrOw9jo47Ty6/2dh/E5A/+mPln2KcQLHizs5l6bYR7Mo
         u06BO95dxqd6Q/xlaCTmicCSMPdP0z4NDcWIJP45URalYUQkZCUf3Tgr4RLnA6G9IF8q
         ldt3vpcxyh5Fmkn850ApHBY+B4HTDjbNIEf658gU2jsowUCwnwHOPuRM4tmrbxAh51b9
         iunW9h1yROqwwhx7rUM3t+QHGWybW9fmhL2St6UEsa3Quix4bNK2pMrA6XLBNvg9vOP0
         0U/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=U0IC52wJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f3si99785pgg.3.2020.06.17.18.21.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:21:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6CC8E20CC7;
	Thu, 18 Jun 2020 01:21:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Qiushi Wu <wu000273@umn.edu>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 220/266] scsi: iscsi: Fix reference count leak in iscsi_boot_create_kobj
Date: Wed, 17 Jun 2020 21:15:45 -0400
Message-Id: <20200618011631.604574-220-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=U0IC52wJ;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200618011631.604574-220-sashal%40kernel.org.

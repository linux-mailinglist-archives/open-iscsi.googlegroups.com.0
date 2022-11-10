Return-Path: <open-iscsi+bncBAABBNOE2SNQMGQEGJU22NY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3b.google.com (mail-oa1-x3b.google.com [IPv6:2001:4860:4864:20::3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E05DD62C6BD
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 18:47:35 +0100 (CET)
Received: by mail-oa1-x3b.google.com with SMTP id 586e51a60fabf-13af11be44dsf8544284fac.21
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 09:47:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668620854; cv=pass;
        d=google.com; s=arc-20160816;
        b=S+LCQhFsNxuyU4Plhi0yCI12JKThUVft5PNTu/ow+WK4CKUncGTdWOm008kwYg9D7p
         l4MnZ82eWVAq/PgFHHAeZDG2P9eSr5vSPU/TrMjiCXJwdfGO4mxwqRpka2xUMjMsZA44
         +bILDsJjehW5HI63jL8Wr2iZ4rcLlBtwwt1IOGusrjBc1kEUL3NqFWnhlbtLu38LaZA3
         wGyHleCyyMG3FHT4Lggy3jGUlbpIqZn3pXo4Er/9wUou5Vz7aV3YTuETqqySpYgeN1mO
         jQooFr+jrUiAbAZ9176FJ0EIN8L33zm9WXwgHRew/QfHva9cTsLLumQTp6yhEyy/+467
         b/Dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=Y3l57XXjWt8Xjcb4FBIirt5RsGkpq0Lqt0bskN6Ro9o=;
        b=rkCY4cTxV/VNbgZ7eSex4fpnP7jVRhPUXmNlJ5nOTo7Jev6DEUJJa/VWgOX9Jbw0i0
         5UI72440j673h3vWAacYUiHa1J43GjSrk/eGUNbQa9FcqpcpgdOu5EZ4RUV+fCMVgFxz
         AYVb/SWHAiydLFWX4kgsNzazsNDEtSaqdgehMIg2it4Xg1UsSWtXzfEcGt0Xfmfep24d
         ddgDREiC1hlpszU9y34t/n6VKtJnVHj3xutnd/Qf2x19zzQvYpRjoyPOusvK6DyL/f8H
         /BtuuhQsasTl/pWaU0tIOsXt1ONecKeZVnnb/2j32rYDgbh2Wf2tB5UTjinVwtg1zwQR
         6Qqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangyingliang@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=yangyingliang@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y3l57XXjWt8Xjcb4FBIirt5RsGkpq0Lqt0bskN6Ro9o=;
        b=rPqUXB9sd3WAbTFpmeExg04Tekk6jKsdiamA8+oFgge8ew0fENZLdJRL/sbxcwepvO
         fFwM2jBPXvyISb2/NwnkdGv1dxFfCgUpHFKkL3qX83CBtGM8CRDYOxfP10rQR4tRfib/
         Nf6L7S8b0vz5fiOSv4+OsLS8YrjjRQCYJ4ivCSd7sxq3qk8S4QFpReZwMABWufjUcG4L
         z09pZT7OlAbsfs19mRTpT9qeIGPhzJ4oETbk6Iq3QlIG4tDnRSyv6BYT390nx2326NO5
         yNvvEfG5D2UtGpEdrzc+RwKLHFUjfJz2UZfEU53FbUH08k3eZv+T5hETOymBfCWzwJ5u
         BxUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y3l57XXjWt8Xjcb4FBIirt5RsGkpq0Lqt0bskN6Ro9o=;
        b=D+wV+bVyRVoQPjNW9HVgaX4cy6VlYkqrtqZF4TMjXQ9aPRfl6gMj4D8UsYY9Wh/TeC
         WWp8DGCSRqPP/cCqq8IJkJ/Tcz63jws4kk/maNeciol0cnk6yGdoAwX4HVqmFiplU6yg
         N90HsMrL6/HqnwQLM/gKX0n+xRwcbR8gUXSXsYHRGurZlzvTB1z3/XT8avS2trxJ6/Ed
         ISx7Nz96Xv4G8xiKWSEb7r24nqwLfa4BStqhPGud0hXK6mFWPC6LuTe7uAvnu+6U1XDm
         0lbkMKtnLAUvxrUqfVlFbChcEGRBLTEEmHBG0pMJ/CgOAEn+il0e7N7Td/fLzS46fUAn
         sdiA==
X-Gm-Message-State: ANoB5pmAjKRMyzY/VIo1b5NqiYF+o8lXDV/O6jb3hupZsh1E78u4dSTt
	Rfkl4nW2Y0BilMYayzhoo4k=
X-Google-Smtp-Source: AA0mqf6ckZIjDrCTPBX81SIJXJWA6qWAdkxBRcJyA3VzEfslzmCMJofKf33PjkvjIPXMPd43g07UOQ==
X-Received: by 2002:a05:6870:ed8f:b0:141:51ef:4eb1 with SMTP id fz15-20020a056870ed8f00b0014151ef4eb1mr2306921oab.224.1668620854503;
        Wed, 16 Nov 2022 09:47:34 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:5c3:0:b0:35a:9ab0:cca9 with SMTP id 186-20020aca05c3000000b0035a9ab0cca9ls5678141oif.7.-pod-prod-gmail;
 Wed, 16 Nov 2022 09:47:33 -0800 (PST)
X-Received: by 2002:a05:6808:11d0:b0:35a:308f:9c07 with SMTP id p16-20020a05680811d000b0035a308f9c07mr2160179oiv.242.1668620853334;
        Wed, 16 Nov 2022 09:47:33 -0800 (PST)
Received: by 2002:aca:d909:0:b0:359:bd85:bbd0 with SMTP id 5614622812f47-35aabd2f179msb6e;
        Wed, 9 Nov 2022 19:50:14 -0800 (PST)
X-Received: by 2002:a05:6870:32d2:b0:140:6f4c:c902 with SMTP id r18-20020a05687032d200b001406f4cc902mr17969604oac.101.1668052214234;
        Wed, 09 Nov 2022 19:50:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1668052214; cv=none;
        d=google.com; s=arc-20160816;
        b=i1aLvubUwZAGkkgoUOYR8Nm9QMbe+IFZ03pC7wK9xvAZsdiuYB4wgVoLXaN3vVFYIx
         7pieTg7zHVhdW4yAE5EOpsq66NHVTQSl2Hm4Krmr7qXrcY1oUDr7qGpAQRb5j0GdgmtC
         oE34jb87VXI85t4CGzVu5nKsDnlsTchhayqucy8ZLM58hMXvMpsjDXy9IPpSto7TX3gt
         tiSA6TinIQs2Y03VYj55qGyXdM0g9+6HZtIB3O6ghjoQLeLwLFpEsBo75r16ofSc01DQ
         wuEqKl1PTK5NMvJAiUYu2Rm5bfjg0Fti+cSGprbgYiwcy4hcM5ztLF+mlel6Tq1+YGcM
         KZFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=qFDueI2gufmS1+tTNfaCSWXVzVoUVqFvgtj8GR/zT/c=;
        b=QdJJ9GvY6oD5W6uwfe4LYbADjZfiww8h7ytEViRHMarXeD0lC8ePQmcrXUQ96o83ZY
         CrEupj+qb4AMbfQlDeMggg8Axfp7ppL+kN7ttC9kv/dvzREpukbzrXcXyTBmJvcuhKAc
         8v2M2s8lld4BTFmduF9WM9fc7Kd/+YPCEStD2XK5Qqf0tnMNfEdCQVUHIe8gTqJrgLTe
         rIDtFTBrkXyEcDtJlcrbHqnT6UX4p9WJBjd4rKom+WuzPtlCE5mRGQv6N295NH6Ymz1X
         1IjrHfuOtwizk+ugPl0MHgQnLCNPxU9ngZpQIWFeDbGDLRAkaFx7Kpl68wBNs0QXz2z2
         k94A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangyingliang@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=yangyingliang@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id cv2-20020a056870c68200b001371e49ab90si899570oab.3.2022.11.09.19.50.14
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Nov 2022 19:50:14 -0800 (PST)
Received-SPF: pass (google.com: domain of yangyingliang@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500022.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4N77BG6QZmzmVGY;
	Thu, 10 Nov 2022 11:49:26 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500022.china.huawei.com (7.185.36.162) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 11:49:40 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 10 Nov
 2022 11:49:40 +0800
From: "'Yang Yingliang' via open-iscsi" <open-iscsi@googlegroups.com>
To: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
CC: <lduncan@suse.com>, <cleech@redhat.com>, <michael.christie@oracle.com>,
	<jejb@linux.ibm.com>, <martin.petersen@oracle.com>,
	<gregkh@linuxfoundation.org>, <rafael@kernel.org>, <yangyingliang@huawei.com>
Subject: [PATCH] drivers: base: transport_class: fix possible memory leak
Date: Thu, 10 Nov 2022 11:48:09 +0800
Message-ID: <20221110034809.17258-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-Original-Sender: yangyingliang@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangyingliang@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=yangyingliang@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Yang Yingliang <yangyingliang@huawei.com>
Reply-To: open-iscsi@googlegroups.com
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

Current some drivers(like iscsi) call transport_register_device()
failed, they don't call transport_destroy_device() to release the
memory allocated in transport_setup_device(), because they don't
know what was done, it should be internal thing to release the
resource in register function. So fix this leak by calling destroy
function inside register function.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 include/linux/transport_class.h | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/include/linux/transport_class.h b/include/linux/transport_class.h
index 63076fb835e3..f4835250bbfc 100644
--- a/include/linux/transport_class.h
+++ b/include/linux/transport_class.h
@@ -70,8 +70,15 @@ void transport_destroy_device(struct device *);
 static inline int
 transport_register_device(struct device *dev)
 {
+	int ret;
+
 	transport_setup_device(dev);
-	return transport_add_device(dev);
+	ret = transport_add_device(dev);
+	if (ret) {
+		transport_destroy_device(dev);
+	}
+
+	return ret;
 }
 
 static inline void
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221110034809.17258-1-yangyingliang%40huawei.com.

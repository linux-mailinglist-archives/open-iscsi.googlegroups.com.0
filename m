Return-Path: <open-iscsi+bncBDRZ7N5GYAFBB7ETWSBQMGQEKDNEELA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id D03543560AD
	for <lists+open-iscsi@lfdr.de>; Wed,  7 Apr 2021 03:25:17 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id j18sf12866349ila.11
        for <lists+open-iscsi@lfdr.de>; Tue, 06 Apr 2021 18:25:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617758716; cv=pass;
        d=google.com; s=arc-20160816;
        b=G4GfTQR0f5GvwnAieD69O53yO9vD6NHq6fpxG4UP4FzYCjPpVm6JqcfDW39ZFZoJwi
         1Ta2bYBraDsLkiBOZSVdcXYG0CMX9lY+g8SDHLiM/V4+YewRn6RgX7CiIdfuXQl0Xq55
         5h3NECIMhbNTK2nuCN7WlXBLKM9RxH/gKX+OpzpHJF8Owo3UMhXrSWNEX48Pzrr0/QKJ
         NijbztaHjGOf8YXNrFH2q8HYP96JoDKcl4gKplVA66bHmCb4OeZLQsHz9x4TDnZL1lN6
         WwpD+Dvc3MtfCHnJYILavrHGhNxcXHBuJpJpE250jYQU/UFQUvUVdZGK2mrc2hQT8OVG
         t0Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=cJsfNKf8MuzlcBeBe82YVrDcHsS0WByfrAUDnUbtO84=;
        b=eaJ+paMvuIWzecNhv2Z1XTCAaw5kKo81rzMxsnsZqHetoIQeNn/jdyw/oXkPnYamWA
         ym4e/YoADiwHY0FsCeA7wxn6mv3xmytzPG7IeaHfPHIh1/VH9JIsU0hMWijMK2Z1ucL7
         Vp46I9KgvMR9fX9BYnM5aTxxb3wS3Kcw112VPEMMt6JF0hMYvN5EhbX8k5AiHTJabsAB
         TgKhVJ6H/B1cYQCy1BeBZJdeAPrQtKOLsCNQ7wNwXsrgDI4/UXVu0Rr703lcPnXO01VG
         ULm1xw/nrLKdWrqJ2xhwaJASxIvQUYFtDReZidMIOpUIUXOm2WmrgYON1nw3O4Ak/Vda
         SRDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cJsfNKf8MuzlcBeBe82YVrDcHsS0WByfrAUDnUbtO84=;
        b=dTlx/9m8QWowTn0zhwLfRbMYD/8EJc2x/bLmHirKsEBjyRQ5PrM0/buC49F7mELT/A
         IhGjBOTkAjcUL5j6mecXpNEWotT34jvwbHo7XwKcWTzTYKB9J6CwpCUZZzYS0+eb831U
         A+GKwl2/mdIWccvFEHN7MfLD7QXdmH6xDA9S2K7rTsIfyNHz2IfSMMhBiSIOZYIugypl
         1ZJJ6mi3ZGjMJ8y71jgC/uv+GEoA6bqKgXY0LfBThvCArlPmk1Yz8Xo2iFmlmpQVJvUl
         lQDg+UjDst41+pt6o8zH55AIkQzhGWfMeP7hhAiPHH2XfHwHtEQ12RbhrUiOFQbbtxWk
         ekjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cJsfNKf8MuzlcBeBe82YVrDcHsS0WByfrAUDnUbtO84=;
        b=c8jNxA41MEmdsq+LQun8gedHGdwpQXk3CKeoyQqc5mCijGfpBKO6cNP/F+end3pBgy
         dX78SNskL9qcqcJPHztdMwULTBIr9xS9wT9hUFfJYTJDFY8+hgL/OQPFdlO+C/e/3lqV
         azrCM5kl/0kUGDdqQ2jY0pM2jUjGhsrKAw4jffmqPb44h++1+a88jIHALI7rj/XoxyId
         JchMEXkgTTVUXGdnxot4R+eeJAe8JumahdTVmSW4LA+xKsoui68loR7hE6z+A85ydRCk
         d2sGGpIuswfmVhgWe/ZIpG2a4UQUi8gM6jdxdEope5lx4eOLhQGTKb1+Omak7JP2jl/T
         XdBg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532yvzKD4poIWPEMo+AVc4MYXWg6HqeGBnS/Ov46qdiXCLsLveHg
	LJiHlQ7j+XdVpwMqb4U1AXk=
X-Google-Smtp-Source: ABdhPJwWuJvVkqLzR6T2WQqfyitnZqF+szEyLWPFsUhX1hvTyPgFgn8Zo7LhgMohsxkWKJT+W+x8gw==
X-Received: by 2002:a05:6e02:216b:: with SMTP id s11mr783610ilv.78.1617758716794;
        Tue, 06 Apr 2021 18:25:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6638:1455:: with SMTP id l21ls52214jad.11.gmail; Tue, 06
 Apr 2021 18:25:16 -0700 (PDT)
X-Received: by 2002:a02:ca50:: with SMTP id i16mr942185jal.5.1617758716316;
        Tue, 06 Apr 2021 18:25:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617758716; cv=none;
        d=google.com; s=arc-20160816;
        b=SlpQUUydYebwfmBJtCAgcWO5A+9jWYz2BuFY6thLIy4gCFad7koKZHmVYgJEBqgvCT
         MgemRrcq7ZhYrgc6rowlsh0Ni1eDDG2gebQpBdtYu34FLJDm1lGf8AG4FRPXhYLWBiOY
         JZR5gAtUH3qzUKWFDiXkysFub+nPzYFYeGfZdzHwm7gjUU4bmDel443x/6WoybfW5fx0
         Iyr2HGkmBt1sPq+d9+kIekb4UBQfRavQQOrb7rHIDAhzYfOftQD5nzh6xRt8bCmOaBco
         R3qRQ8V5szLsqUVpC0FRUOyMDgImVA9T2O+2O6TLFcGdfHCfZy4dHnpSirNG8YZHGet4
         zEtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=sP1h5vQsZntTEmQDrJxS6xlESOm/8LYKWXKBBpB3Je4=;
        b=Mix7K+P/6XYToUTWlTSgI3BqjCmxkp1adK3NhCjJtgKEWYWG4yzi9M3HU80Yhwbcv9
         5uCr90QYTuBxmW1Es+dWeN3P1KGREFk0JqnmQ4O5AOlPsWjynn884hjhani22wA8SjEZ
         9ZWQ+HMGMM1IHyYPGAZzNFlEWBEomyCSWjIdQVGWSGRcg/Yg+iflWBk2Snd6ns8xMso0
         DQMS6oam0pKW+pJQXcaZCazNrbsqPjUg262AwQj9rko8mjfqXRaQauXKJyo5hoLZOnMn
         lRrITWScXc0P4hC+z2Cc3xHFGlUPTMEew92Zx7svWUjCoJGNQS9+DHccgNYgheN2gbC/
         hXcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id x7si2350iow.2.2021.04.06.18.25.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 18:25:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4FFRSj1Y54zpVN5;
	Wed,  7 Apr 2021 09:21:57 +0800 (CST)
Received: from huawei.com (10.175.101.6) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.498.0; Wed, 7 Apr 2021
 09:24:33 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E
 . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>
CC: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Wu Bo <wubo40@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 1/2] scsi: libiscsi: Split iscsi_session_teardown() to destroy and free
Date: Wed, 7 Apr 2021 09:24:49 +0800
Message-ID: <20210407012450.97754-2-haowenchao@huawei.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20210407012450.97754-1-haowenchao@huawei.com>
References: <20210407012450.97754-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Reply-To: open-iscsi@googlegroups.com
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

Split iscsi_session_teardown() to two steps: destroy and free, so we can
destroy a session without freeing it.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/scsi/libiscsi.c | 19 ++++++++++++-------
 include/scsi/libiscsi.h |  1 +
 2 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 04633e5157e9..9b7eb56e3bd8 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2929,11 +2929,7 @@ iscsi_session_setup(struct iscsi_transport *iscsit, struct Scsi_Host *shost,
 }
 EXPORT_SYMBOL_GPL(iscsi_session_setup);
 
-/**
- * iscsi_session_teardown - destroy session, host, and cls_session
- * @cls_session: iscsi session
- */
-void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
+void iscsi_session_destroy(struct iscsi_cls_session *cls_session)
 {
 	struct iscsi_session *session = cls_session->dd_data;
 	struct module *owner = cls_session->transport->owner;
@@ -2957,11 +2953,20 @@ void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
 	kfree(session->portal_type);
 	kfree(session->discovery_parent_type);
 
-	iscsi_free_session(cls_session);
-
 	iscsi_host_dec_session_cnt(shost);
 	module_put(owner);
 }
+EXPORT_SYMBOL_GPL(iscsi_session_destroy);
+
+/**
+ * iscsi_session_teardown - destroy session, host, and cls_session
+ * @cls_session: iscsi session
+ */
+void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
+{
+	iscsi_session_destroy(cls_session);
+	iscsi_free_session(cls_session);
+}
 EXPORT_SYMBOL_GPL(iscsi_session_teardown);
 
 /**
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index 02f966e9358f..d8eef420766d 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -404,6 +404,7 @@ extern int iscsi_host_get_max_scsi_cmds(struct Scsi_Host *shost,
 extern struct iscsi_cls_session *
 iscsi_session_setup(struct iscsi_transport *, struct Scsi_Host *shost,
 		    uint16_t, int, int, uint32_t, unsigned int);
+extern void iscsi_session_destroy(struct iscsi_cls_session *);
 extern void iscsi_session_teardown(struct iscsi_cls_session *);
 extern void iscsi_session_recovery_timedout(struct iscsi_cls_session *);
 extern int iscsi_set_param(struct iscsi_cls_conn *cls_conn,
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210407012450.97754-2-haowenchao%40huawei.com.

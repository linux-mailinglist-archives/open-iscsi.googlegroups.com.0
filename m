Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBDWEUKIQMGQE4POSRZA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D254D2F5F
	for <lists+open-iscsi@lfdr.de>; Wed,  9 Mar 2022 13:48:17 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id l14-20020a17090a660e00b001bf496be6d0sf1483731pjj.7
        for <lists+open-iscsi@lfdr.de>; Wed, 09 Mar 2022 04:48:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646830096; cv=pass;
        d=google.com; s=arc-20160816;
        b=TOsLG+O38o4ad57zM+JdBteDC3OzzSIJ/FTo/J9cI5fQvp0BTMjhwxBzyKuQSPHhEt
         B+xD937F3t9AxpyDmSRe0z9wuI7sdm0jOjs76ejHMIJYcsbuVx/HML4RHO5ZXH9EYc+e
         dI43C6Cp1wqvp8fojo8BRafinsV7vRIszPsN5I5HzxQlFDdX3d15wsuH8Wk3FPDI0u7T
         jeLw9Fwrh/jUDUGz2Y1Wp9LlFwcbdk5SHy+7bfABW9vasJXLpDjNBqBstxSw0D7sJmil
         slfxAKnGFwL8YZo/5r0enPZ7dL869ZW5zGCUmX5EEHhetyUmwgAiGTrzljGhy+6WVb8U
         hKEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=wrFmubWorFUv4yR/MMEDMdFt9bS8cJJhukIkgB75bsA=;
        b=R/8wocXZxFkc1hUoylNrw5QnvXbdHRdXevt6ywuDhUtck++18UVayGh9ybTad9JD0b
         6WqJSQjx4hSac3KKhWU2ey95TFWQDUP4ggQR9gdNbiQtrCDx1+JHc6U4cMhiV93qcn7l
         z8j0StYZmyFV7yyto3JhpwjrcSywB87UiD9uFogQqzE2/kEsUba56EQCkOLAr1oxL0D0
         S0DO6yqblt7bVqe/Yw3HJqr4EFr02CwC9Jn/71QKuC2ItQSsKcSAppzE22x81bVCXpJy
         oORLnLhuQGPFnGdrqFF4ny6sDCN14CJ9RqHP2MqCauulMWBnaXj2Fn6gr/TPmQySnCkj
         Tjig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wrFmubWorFUv4yR/MMEDMdFt9bS8cJJhukIkgB75bsA=;
        b=GxnkeV9JuUTMMC6qNB3Z6l2ipbwlenLqIza003U4rvM6ax4OeB75gGlpzllHZ7Rt19
         wJWCaYbKiLy6SI3FhpeDY0DIK5KvsOORQJhnYx8qb708HzEMkC4fZPOSbW2SokKcWaVB
         dXqPQvqvU39MLrtkoGSywJiDJk+vy9X27JhFteg2fPFefUvfXTunMCy1XkSyJMdjNUfj
         Xh3rGh0yj2TjEIlXel+YoRlW12Ga1oD169pW0qBKmlQ0JVA8NY6mAxgna4YRuc5dzLBO
         PvMaMzyakPk+1fBX83cQrmrcgW0ZQPlQIutFg63KoCMK72iQ6Qe6OiP8bo0Ix2mfJpXv
         yQGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wrFmubWorFUv4yR/MMEDMdFt9bS8cJJhukIkgB75bsA=;
        b=oc/L/HSPRk1VW3Z3Usia3Z2GluTYBeIL22N5DULaSBmjWcNlS7RnZ/MmYsUdxfL4qg
         ROQle8/G2ZufR1smk8FnXmqddRqiKOku7B6INlU6vkOI2H1sVpep4sxGH/QRJkoFHCqQ
         +dCnL9rYG9VZNqmmTQ221+HDWJ/sLGUg1WobfPXaYGobMGNDJDr0xORmb35PG7Q6twXc
         MEl8i6m8ieYYHXMGn7LDpnB39JXSPQDayBomQeNh1nS7pQYEn0I5W8uaxWfEs/OB1DhL
         Gmc0p4BuclZVuIUZNhTL6QAhKgnuEX7t53uiK+8HSv3sa1dYk6GzerQ/YyPnKgxHzhMJ
         RCEw==
X-Gm-Message-State: AOAM532CwEfv42Sm/1uCTrzNb/yK+7bML434/6zhF7k+OBKcb7VaSjm7
	2UGIqUm+FqTy00S0N9oRFZo=
X-Google-Smtp-Source: ABdhPJzEty4p5cmnkQJ+H8aVDPHZLCreS7XofWTjmpiVJgUkFYDFF7nuO2EYtWmItSllTuFJKRG+dg==
X-Received: by 2002:a17:90a:20a:b0:1be:e850:1a37 with SMTP id c10-20020a17090a020a00b001bee8501a37mr10146604pjc.28.1646830096216;
        Wed, 09 Mar 2022 04:48:16 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:6782:b0:1b9:7c8a:8c03 with SMTP id
 o2-20020a17090a678200b001b97c8a8c03ls1658962pjj.0.gmail; Wed, 09 Mar 2022
 04:48:14 -0800 (PST)
X-Received: by 2002:a17:902:8b8a:b0:151:7777:221c with SMTP id ay10-20020a1709028b8a00b001517777221cmr22005723plb.56.1646830094013;
        Wed, 09 Mar 2022 04:48:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646830094; cv=none;
        d=google.com; s=arc-20160816;
        b=Mx8vcHjB9t/iNDQJQwaOug4qxxoPxw/5keO4Z0TLGzGsXQHnbmRYQVjmK5fXoCXaUX
         uGKnu7YjmGJvRnabD/XwAYZ7u70F9oqPtsKQFrvT6cwNqGDgbQkuSzK9UkROtFNFjeFE
         0bEFiLbJR/URb9iJd7BSz2T6l3J/+Be6Gj9LePS3pSXuCw8m6SC9xnYCvpNjFx3e1ifx
         JAbyfazSfbUXtLELapnjY2qQuiOpr8SpAV9IlbVdKdX0xhLRPLbSbtXb2IMwDRGhFKNJ
         NjBY7JcRFTejKoiyUaB0GdIsLtG/ZM+FNeZp5zBn2rpt/kBI7WZE3NneEpph5bv8aH0V
         rFEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Vwf/EaHc3OuFJpI+dAy4bvdusqZJB0bUFT0MKQfb2M0=;
        b=Ig8xsAf91XQpseo8q2SU00MLivS9q6UR532RbNlDHfCFGD3BaXtruqQAJU7zX71Mn+
         QpkfD8mMrWQBSi/aWZ6Eodos0BIV0z1z8vD9QoTtg6AAu76vgZnFos7JNft4Q013B0sq
         XfUMZOQmpT/+0DD7iChf/HFIb5t3+2n8/Fhz2nXNcdzibBgWNs6uY2cRVa41OJJXwQzc
         L8AaYl59ryUWA6jORAiV8Cvhryngz4wpom9vpj78sAVH4dYWmACjpAErDiIoJCGrwTDO
         Qp5zLvEAWPOGj92E+1tbOofVlqA4AEMhLWlBYo717HLW6jBO1YxrDUyTWgXwNsNcYnsF
         UmlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id k6-20020a6568c6000000b0037d923dcecesi86665pgt.2.2022.03.09.04.48.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2022 04:48:14 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from dggpemm500023.china.huawei.com (unknown [172.30.72.56])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4KDBgH5NJVz1GCK2;
	Wed,  9 Mar 2022 20:42:51 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500023.china.huawei.com (7.185.36.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 20:47:40 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Wed, 9 Mar
 2022 20:47:40 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH v3 3/3] scsi:libiscsi: teradown iscsi_cls_conn gracefully
Date: Wed, 9 Mar 2022 20:57:59 -0500
Message-ID: <20220310015759.3296841-4-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220310015759.3296841-1-haowenchao@huawei.com>
References: <20220310015759.3296841-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
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

commit 1b8d0300a3e9 ("scsi: libiscsi: Fix UAF in
iscsi_conn_get_param()/iscsi_conn_teardown()") fixed an UAF in
iscsi_conn_get_param() and introduced 2 tmp_xxx varibles, the
implement looks ugly.

We can fix this UAF with the help of device_del() gracefully.
Call iscsi_remove_conn() at the beginning of iscsi_conn_teardown would
make userspace unable to see iscsi_cls_conn any more, then we can free
memory safely.
And remove iscsi_destroy_conn() by hand since it is not used now.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/scsi/libiscsi.c             | 10 +++++-----
 drivers/scsi/scsi_transport_iscsi.c | 27 +++++----------------------
 include/scsi/scsi_transport_iscsi.h |  1 -
 3 files changed, 10 insertions(+), 28 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 38e68b449c08..da583a39b307 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3109,8 +3109,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 {
 	struct iscsi_conn *conn = cls_conn->dd_data;
 	struct iscsi_session *session = conn->session;
-	char *tmp_persistent_address = conn->persistent_address;
-	char *tmp_local_ipaddr = conn->local_ipaddr;
+
+	iscsi_remove_conn(cls_conn);
 
 	del_timer_sync(&conn->transport_timer);
 
@@ -3132,6 +3132,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 	spin_lock_bh(&session->frwd_lock);
 	free_pages((unsigned long) conn->data,
 		   get_order(ISCSI_DEF_MAX_RECV_SEG_LEN));
+	kfree(conn->persistent_address);
+	kfree(conn->local_ipaddr);
 	/* regular RX path uses back_lock */
 	spin_lock_bh(&session->back_lock);
 	kfifo_in(&session->cmdpool.queue, (void*)&conn->login_task,
@@ -3142,9 +3144,7 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 	spin_unlock_bh(&session->frwd_lock);
 	mutex_unlock(&session->eh_mutex);
 
-	iscsi_destroy_conn(cls_conn);
-	kfree(tmp_persistent_address);
-	kfree(tmp_local_ipaddr);
+	iscsi_put_conn(cls_conn);
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_teardown);
 
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index fc33000a6af9..d0f996d14782 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2165,7 +2165,11 @@ static int iscsi_iter_destroy_conn_fn(struct device *dev, void *data)
 {
 	if (!iscsi_is_conn_dev(dev))
 		return 0;
-	return iscsi_destroy_conn(iscsi_dev_to_conn(dev));
+
+	iscsi_remove_conn(iscsi_dev_to_conn(dev));
+	iscsi_put_conn(iscsi_dev_to_conn(dev));
+
+	return 0;
 }
 
 void iscsi_remove_session(struct iscsi_cls_session *session)
@@ -2437,27 +2441,6 @@ void iscsi_remove_conn(struct iscsi_cls_conn *conn)
 }
 EXPORT_SYMBOL_GPL(iscsi_remove_conn);
 
-/**
- * iscsi_destroy_conn - destroy iscsi class connection
- * @conn: iscsi cls session
- *
- * This can be called from a LLD or iscsi_transport.
- */
-int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
-{
-	unsigned long flags;
-
-	spin_lock_irqsave(&connlock, flags);
-	list_del(&conn->conn_list);
-	spin_unlock_irqrestore(&connlock, flags);
-
-	transport_unregister_device(&conn->dev);
-	ISCSI_DBG_TRANS_CONN(conn, "Completing conn destruction\n");
-	device_unregister(&conn->dev);
-	return 0;
-}
-EXPORT_SYMBOL_GPL(iscsi_destroy_conn);
-
 void iscsi_put_conn(struct iscsi_cls_conn *conn)
 {
 	put_device(&conn->dev);
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 4af6768e8195..aedbc4488149 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -447,7 +447,6 @@ extern int iscsi_add_conn(struct iscsi_cls_conn *conn);
 extern void iscsi_remove_conn(struct iscsi_cls_conn *conn);
 extern void iscsi_put_conn(struct iscsi_cls_conn *conn);
 extern void iscsi_get_conn(struct iscsi_cls_conn *conn);
-extern int iscsi_destroy_conn(struct iscsi_cls_conn *conn);
 extern void iscsi_unblock_session(struct iscsi_cls_session *session);
 extern void iscsi_block_session(struct iscsi_cls_session *session);
 extern int iscsi_scan_finished(struct Scsi_Host *shost, unsigned long time);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220310015759.3296841-4-haowenchao%40huawei.com.

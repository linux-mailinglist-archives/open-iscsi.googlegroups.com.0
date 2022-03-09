Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBEWCTWIQMGQEFJBRRGY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DD04D19D7
	for <lists+open-iscsi@lfdr.de>; Tue,  8 Mar 2022 14:58:44 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id j3-20020acaeb03000000b002d9a8533ee2sf4740937oih.18
        for <lists+open-iscsi@lfdr.de>; Tue, 08 Mar 2022 05:58:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646747923; cv=pass;
        d=google.com; s=arc-20160816;
        b=w6F0DQ74ZQJCr/zLTBeoUr3u7ds4KXyPMspRczsxcdqyrfHZkGVRTMANa1PJa/UvLH
         WBO2nOJeL2FKHYVc/Lw3EELwtSDxXVXxktJ61Quvtlc9WFLi+xJ+2oYw5f9mMH5zAFOb
         uJLnJEFbYfzefjGJhhR4wsRwyNHimwQsX5XuCcBaVEtrA1KMe8UjMKrQ4UNKRM7abg8K
         VnNImiliGw6sfY0t72QK1FXVyhlhL3i7vD1n7z/xnHNFhLW1GVcZE+8CWc/+jdiPlXHw
         QfhkWrLkIAG5zXnD3o2Z25dY8vRWC6qvChyFj3oEfQwfotJcaRsKPC3x1/rV/iroGXDs
         g2IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=LlH8lqD7uPRJiPq58/pYnLKKvJYoxqeKnBZJZOw+mHQ=;
        b=QIl6geMyG9UERrx5MekCx+FMFEkS6t+eIBgMnOaB9rJDGKlNTFK5e+DwDc1lNZOnzo
         PFsXy5KmR8noNW0Ml2FXo4+McOrMJklKcmCOV/ChJbcQJfkUZpuvTbXkw6N/F8TcfJYJ
         C27BoJjCeI/Z7sgYUclv6O0yaJU+VQZHBXAmlID3wfZ+ZpBVMiE6GRRIup1gMRqHJal2
         vGkjRgeMLG+AvblWrcyaDSfSIsK1lflBCmVKPbdhXr35PoUnBmXpR38L5C5hqLJT6ntP
         ZVtHNBTDfXVoZcDQ52DUCwFHAdLD/DiicGVHO8LaSUKh57PIXSgjzsussWVJhBV5avKq
         Q1sQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LlH8lqD7uPRJiPq58/pYnLKKvJYoxqeKnBZJZOw+mHQ=;
        b=VrrxU1oIEIldRzSOkFLx3W0u2h0Vs/TIoPF4ivx+HTo6JXwqf0wqbDrMxNPTwsbs5p
         q5sJOafISijgkyXbrgzQhSp3qpCjoQDAZ0q7aGK5A4MUvw87g6jIlhKxhG9tHDsr53Hu
         GX3lc/JLjT3owO8qi7vGeoSvnwcZIEEUItDVyKOfOPugRQxY6SgW0NxJzBCkJTCBIxY3
         pIIreuw4f2ideMxuezOo8Ih8AZbJ8H15WfzdHo8pWjJcWAqWnrdPSDimBcf20DvuSwMX
         LUhxdF7tiSloWn4qKlUSsC6wjCa93qtmgOVZ63MFjn9fL+6diEvGoeT5iFAineI2TnYx
         E0Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LlH8lqD7uPRJiPq58/pYnLKKvJYoxqeKnBZJZOw+mHQ=;
        b=I8/e+znIM/z442EXaU0INehSl36wC1/0TkwRlUGH/cRsUqOHEebkhGAax81TYwCUFn
         t524cLBoicn354hS9IfTsX2XozUST8kL7QmAjsflhEwNAKRb7vzGjN6gBV3l9FvHnei8
         17KT2wxLslAar/9s2wQda/sT2i2huQ262GAmkICBSrzKMyMlmU4GNTQD6CoXrERapvd9
         /Awr36d0jKQbj52+EDss5vYX+PpXHR7fe6uxF+brBlNy2zDBL2knci5lE8WoK3R4XXx3
         0bmDBlXG+ntN051cEx885OR/B0KpLfPkehGcX1J2YgaCStnzCs82duOyXbGqOl8vr0ow
         j2TA==
X-Gm-Message-State: AOAM533G8sDsw9HsKCapQkojpr+QWWsCxH0B5YsMCu+b/GGmuqkuAoLr
	lxKJq1sZ+5VAtJJ3oHAIF1s=
X-Google-Smtp-Source: ABdhPJy9kZ0C+VzclS/woZhGgsP/HZlgjYBjW+mxEonRoG+rcL/iZLzu/U2mCFN++JCXwHJcz9Cbcw==
X-Received: by 2002:a05:6808:1453:b0:2d4:f628:8487 with SMTP id x19-20020a056808145300b002d4f6288487mr2722591oiv.19.1646747923630;
        Tue, 08 Mar 2022 05:58:43 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:2020:b0:2d9:f709:2c08 with SMTP id
 q32-20020a056808202000b002d9f7092c08ls1788370oiw.7.gmail; Tue, 08 Mar 2022
 05:58:42 -0800 (PST)
X-Received: by 2002:a05:6808:2189:b0:2da:b59:3acb with SMTP id be9-20020a056808218900b002da0b593acbmr2681132oib.112.1646747922473;
        Tue, 08 Mar 2022 05:58:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646747922; cv=none;
        d=google.com; s=arc-20160816;
        b=AcO4MzuMFVeoUZuKll2TRXZURULBMyYZu/it1k9uZPEXuflJ1aqym/L/d+uUcjPP39
         hneYrvLqiYaO3/bINQlX3WnLFPnrsNIv+Ngk941yh+kOUStwC2mmji0Z/T75Xnmb12Uz
         HwSB4DnPRaMm34eiFUlQIP5XsM4pSOHYE6bFzUMqNqX0bRqoDMWVRS2jjfUhxIGYrL62
         pn1FwX3VbolEEWRKTXFPrsJQX1+N4DpoWYezzWD0WDSvho4Y6oKLQgU8U9uhiIjXC6zS
         ecPqBvZWjC3kI9SER21ES0DazOMiuduidBM1kYDxblh396lALLOZiHKhwJaf4k8h0EgE
         Rtqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=SLtvgACeU6wBLvEYafayh1J/3kfnDUdOR8Vn2ZiFV4U=;
        b=DsbOCuivp38BKN+hw80P+1PovPTUNSwLMeL3B/Gf2WiYdhcwovTvh2/j8zkjWKaZkm
         oRkIIYiIGFst/z8gLRG0uqKgNoDKjh6LfVufuQ7yPYbuLaRmKlI37TgPCHhzOLvZ+6oZ
         SjHpBrEBv3OdRd51OhKaSwZx6ErA87UAO1tLuqht7BVrXVtc117xuXNJe7TD6tD1FTg5
         mt7T3G5UsQwWcfn09hF7NQwPHhsgJlD763z/t3BI4b5aw2IheKub8L8e8unLnu7Lbqhe
         k6K6fmdWXw9HpciO22ZSjaUFJe7e38OHt8GgVCYjoT4aFPIonai21gdtNqjWOBH7B21D
         aTGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id r13-20020a056808210d00b002d7644b95e6si1406266oiw.5.2022.03.08.05.58.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2022 05:58:42 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from dggpemm500021.china.huawei.com (unknown [172.30.72.56])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4KCcJz4l9mz9sS1;
	Tue,  8 Mar 2022 21:54:59 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500021.china.huawei.com (7.185.36.109) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 21:58:40 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Tue, 8 Mar
 2022 21:58:39 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH v2 3/3] scsi:libiscsi: teardown iscsi_cls_conn gracefully
Date: Tue, 8 Mar 2022 22:09:16 -0500
Message-ID: <20220309030916.2932316-4-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220309030916.2932316-1-haowenchao@huawei.com>
References: <20220309030916.2932316-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as
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

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/scsi/libiscsi.c             | 8 ++++----
 drivers/scsi/scsi_transport_iscsi.c | 3 ++-
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 43f903bce0b8..0d57521751dd 100644
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
@@ -3143,8 +3145,6 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 	mutex_unlock(&session->eh_mutex);
 
 	iscsi_destroy_conn(cls_conn);
-	kfree(tmp_persistent_address);
-	kfree(tmp_local_ipaddr);
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_teardown);
 
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index ca724eed4f4d..7b4d998708e7 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2165,6 +2165,7 @@ static int iscsi_iter_destroy_conn_fn(struct device *dev, void *data)
 {
 	if (!iscsi_is_conn_dev(dev))
 		return 0;
+	iscsi_remove_conn(iscsi_dev_to_conn(dev));
 	return iscsi_destroy_conn(iscsi_dev_to_conn(dev));
 }
 
@@ -2463,7 +2464,7 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
 
 	transport_unregister_device(&conn->dev);
 	ISCSI_DBG_TRANS_CONN(conn, "Completing conn destruction\n");
-	device_unregister(&conn->dev);
+	iscsi_free_conn(conn);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(iscsi_destroy_conn);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220309030916.2932316-4-haowenchao%40huawei.com.

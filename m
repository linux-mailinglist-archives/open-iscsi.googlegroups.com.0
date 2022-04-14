Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBYMI3OJAMGQEPBDPEHQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB3F4FF6F0
	for <lists+open-iscsi@lfdr.de>; Wed, 13 Apr 2022 14:38:59 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id w20-20020a9d70d4000000b005e685c5b4b6sf918593otj.2
        for <lists+open-iscsi@lfdr.de>; Wed, 13 Apr 2022 05:38:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649853538; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gfw3k7E+ewEtnWWyIolENRRvyt2CpIzxG4+xO/eqkcFmI5wqOXFxuC1cYAStuI63Li
         ZkskLkNe/hsxpqpF8/U0I3HGtY8Yef4/rjw7uTcgdTXilt6dXSTri8v10DpWinj4qlM9
         89IUvE1WGdlFH9SHCTzykTbehwZhIijd/FkxLdxGgr38XvD0fIYFkXD4VcAC+z+4Z8OS
         +B6DE42vWVDlz/wlrBDEfCJZbOGstPkG7U4mBBA1DfaojR6IE5zHQO3dG3YH/E+kxk+h
         GSOfYqjUehCfTEm2Qn4BBkKVFcHa+HMyLmwUbntXjMRTtk9WiHkppFs9zv/T2zAzQoQ3
         JFHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=QjioIb0b2atJi7A9piO+2+nog3HjhZ40JEZK2/WZU3A=;
        b=E4LzO1FNmfYStp7DXXbSzarRg4odaz6U6XxFNtlz8qdjLehnBiQnpxsbWC6bVfxqx0
         a3NaPfyUyCRo3mEkjnG9iNjNL2GClsG0yeF8hJZ8SLv7GjZ0sKGRHy09ZAhNoORrdBLK
         hKaW7RrCcjHtxU4Aw8CD+E3OQUflZ2miXWEgyp/4eu6UHhiq2HNVtcacOKZnS3p0YHR6
         Kc39rxfnewCWodgobilN1XnTAX+hxkeodhL61lvB+b2DKggS8BRoZDd4bkJpZyzT+jQ3
         duxSp/sont856SYDnm9hxvkFgMQY/XKrZQNwJuFpakcqYtgRvZ32hYvq1OlvPC2Tcnyi
         kL1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QjioIb0b2atJi7A9piO+2+nog3HjhZ40JEZK2/WZU3A=;
        b=jMLDIqmi4ljnFhGW8ahAZ1KlPNpFRmsrzFBNGtU71yxxYNL6Wvv85e+lI2f2C8+rOy
         EkhbNmIyjpm1AF0YCxs7oYZshucHna4BL3h1sLrUFr9fVvy43v5DHE1PZZEu2NgxHOLZ
         yHZIAk8zQNxxEegc/bY0kP3NgzvNyHF2leHOyG6w8dEhH3aflLc7Fa/HJRjxHwXId0KU
         CQkwgN4t8o7btldICZRQQGHDZMXJmM7cyRZNfz91uY58ucxGuLGvNTnyCA2eoTs/uq/0
         OW3RUSy4O1Be4tkIhnoheRVCTtsQrfFF2lFrrHV9mYve2/Hw0Qs3HbdHySRHgVgvxoCF
         Hcuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QjioIb0b2atJi7A9piO+2+nog3HjhZ40JEZK2/WZU3A=;
        b=p7L6ZUFfjaYpkE+Z+gMFj859Nr4xhcUQXaJvaAxKl1Lqt0WvjNosrS1boseoDsRZdp
         vEVQvryHzd1dYW0z5QWEqCPZ8NGW/X6hQemoq2iQjmcCUzWjvYcq1mfZ2Ejlpw5d6wQV
         ME5fsFRRij/QWOh3gR1QookmcyY5yz7o80QBeWLMhIKYBvePJvA3TOeaNcsxIhGVRTjA
         9KLrSEiAyuy+C9NRjJEFNxOJM86qHkd2o74SNgW0oVb4/gC8f8liyUBcnKJsxOChgmGv
         Zs42NNbM0HW6rtOpfPbSyjF9BobHePULI4Y5JnjBOsb/i7djD43RgW1NpQTrCW8Ep0q1
         Uc3g==
X-Gm-Message-State: AOAM533DwUSRsy+NFn3A1FndBhPq/RQiQdtwkYcwLSP0pF+oei76Nv0u
	W92D8h9YLzt7bCkh8268aXs=
X-Google-Smtp-Source: ABdhPJxxY5wlKnG2NoDxvpcuj5j6EoHhECBOVuXCy5AhNoiwWAhRvJBiN1c5kT+g18eiE6A3bjHcEA==
X-Received: by 2002:a05:6808:1302:b0:2da:84f6:9eef with SMTP id y2-20020a056808130200b002da84f69eefmr3957798oiv.72.1649853537911;
        Wed, 13 Apr 2022 05:38:57 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:2109:b0:2ee:36b8:861e with SMTP id
 r9-20020a056808210900b002ee36b8861els1222829oiw.10.gmail; Wed, 13 Apr 2022
 05:38:56 -0700 (PDT)
X-Received: by 2002:a05:6808:10d3:b0:2ec:ddb3:c82d with SMTP id s19-20020a05680810d300b002ecddb3c82dmr3941353ois.250.1649853536642;
        Wed, 13 Apr 2022 05:38:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649853536; cv=none;
        d=google.com; s=arc-20160816;
        b=Uu6WAQ04qjVBNXworszDOwWV/6T1w+M3nV2bJg5k9g47eVnqQ53vhkkFAuJ+/idBMO
         X3hDMf3cedA/SWqnWvoLCMRSgooVTlE7eeBMYfyBBw7/CK0DiZKFxXNoULsgTR5ZfRIU
         XF+jBpgnJ4m7lflVm3Sv9nhYFjHXLZmiZPRW+sJ9dbBzkGZgx/gIVbaqzb2F5SfE2+YS
         uKrwr4jvOZNUGdYTfCfYRtLsbLUM7BD3M8KyuGuO8MeITwhwWJH+/4TTkgT/fWktx5dm
         WXWFQ+5ZeExxxrKz0YHE1g6Yb2GoksUExe2WYkMTzzaHYAYRnBwg/LZd99NqFF+HSkpf
         PhyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=0gBk7s8zwhqZ/9/j0jD8HRYwt6BT6WDvRj4KICe5LIw=;
        b=P0EZTb8k/OyyT7Poi6UmEwT+72rOdLJnaKg5j4k+u9k0Ku2/zzFXygi2YynNFqP8ZO
         v2PYMM42s6Fuaw/3gKovfHBryKmayQRF447BldpL6YCsd7L9/VxjQnvvm4c+ozFDUiHN
         NDVVzcbJQeZ6D4RL1H/yyqydEc29bQTwaUZ81vu6P6MLAs1WalwSU2bEXsV7B5P24iwk
         7pM4QKp4PSyv50GzU7m1mUowOsTL3cg4nyzgbKcObjkCxBLPKaucLScPSGROpPvfaBoG
         DyP2SQ4xkJB1FqC5yi22+GVljy8Do5K1WZxukhQWdMH6E+URMuwTGoZ55e19ShbwvPZX
         JW/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id bx40-20020a0568081b2800b002d528048d56si1894969oib.3.2022.04.13.05.38.56
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Apr 2022 05:38:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from dggpemm500023.china.huawei.com (unknown [172.30.72.53])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4Kdhqc1xJgzBsKf;
	Wed, 13 Apr 2022 20:34:36 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500023.china.huawei.com (7.185.36.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Wed, 13 Apr 2022 20:38:54 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Wed, 13 Apr
 2022 20:38:53 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 2/2] iscsi: set session to FREE state after unbind session in remove session
Date: Wed, 13 Apr 2022 21:49:47 -0400
Message-ID: <20220414014947.4168447-3-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220414014947.4168447-1-haowenchao@huawei.com>
References: <20220414014947.4168447-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
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

__iscsi_unbind_session() set session state to ISCSI_SESSION_UNBOUND, which
would overwrite the ISCSI_SESSION_FREE state.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 97a9fee02efa..d8dd9279cea8 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2173,6 +2173,22 @@ void iscsi_remove_session(struct iscsi_cls_session *session)
 	if (!cancel_work_sync(&session->block_work))
 		cancel_delayed_work_sync(&session->recovery_work);
 	cancel_work_sync(&session->unblock_work);
+
+	scsi_target_unblock(&session->dev, SDEV_TRANSPORT_OFFLINE);
+	/*
+	 * qla4xxx can perform it's own scans when it runs in kernel only
+	 * mode. Make sure to flush those scans.
+	 */
+	flush_work(&session->scan_work);
+
+	/*
+	 * flush running unbind operations
+	 * if unbind work did not queued, call __iscsi_unbind_session
+	 * directly to perform target remove
+	 */
+	if (!flush_work(&session->unbind_work))
+		__iscsi_unbind_session(&session->unbind_work);
+
 	/*
 	 * If we are blocked let commands flow again. The lld or iscsi
 	 * layer should set up the queuecommand to fail commands.
@@ -2183,16 +2199,6 @@ void iscsi_remove_session(struct iscsi_cls_session *session)
 	session->state = ISCSI_SESSION_FREE;
 	spin_unlock_irqrestore(&session->lock, flags);
 
-	scsi_target_unblock(&session->dev, SDEV_TRANSPORT_OFFLINE);
-	/*
-	 * qla4xxx can perform it's own scans when it runs in kernel only
-	 * mode. Make sure to flush those scans.
-	 */
-	flush_work(&session->scan_work);
-	/* flush running unbind operations */
-	flush_work(&session->unbind_work);
-	__iscsi_unbind_session(&session->unbind_work);
-
 	/* hw iscsi may not have removed all connections from session */
 	err = device_for_each_child(&session->dev, NULL,
 				    iscsi_iter_destroy_conn_fn);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220414014947.4168447-3-haowenchao%40huawei.com.

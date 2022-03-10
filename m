Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBDWEUKIQMGQE4POSRZA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6874D2F5E
	for <lists+open-iscsi@lfdr.de>; Wed,  9 Mar 2022 13:48:16 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id az30-20020a056130039e00b0034b80e5e4a6sf1071307uab.16
        for <lists+open-iscsi@lfdr.de>; Wed, 09 Mar 2022 04:48:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646830096; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q+1vn6AHjJ6jRxDaNH8Ll1rqXwPVEOO2PwdcPiXbKV+Ubb6DjMwwS6FgQYf9pLkjtZ
         q6Loa06cSIPbqh3hgefRyg+8dCymC4vm+dfLDADvEco7R5RhQj7bcUiMFpG393Oy3a5l
         JJpPKltIMp4E08LtTo6L+76CrNM/qBfAS8F6oM5Jrix1MuQhRfiHoC+oI7YNz8pcg0rA
         o0wBH0v6smdqMRELCKbauZk2qttx/xUpFabytfzlflv/bONqnkPz6Jrdp3RVCORpeic2
         ftG7pxvfwLxgJTyURRz/oGUUjYs13+/HEEwDB/sbAzjw87z118iGtSrPsy9LWFZwxMTZ
         jZuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=kEV2MufoCrK997aD9o6AAOyVIHQZl1yZ3vr/m1xezLY=;
        b=dEuxpx0aBo/e/9RTm/3Gw00CL/lhol/weypO+LPgjC/dloQADwDwkAFF6L+1y5WLV2
         H3aM2EydhazPHCxitiyUVJsH2pBRhBPn1noiN5PDrgWyEPlEQKqJZilfWtYDg4apm8aO
         TgV7MP6LeK8FnQrFawjeDlLMI9h+71T5UM0wyBPVDBwT7j48GNUYaSdJ71RcP6DWNVfp
         90HzIfvlJw/xUN1CNXt3r8JQUgxjfgTiZbonv/RmmuGIWYa+3OGlf5tC7BXDHYmxB9hd
         /2RybFvE3+jXeiIw5QZDKpHOFWs+g9XgbCsbhYO23UyHq4llFmz2tfsc3yfMqQzbZN7c
         YgsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kEV2MufoCrK997aD9o6AAOyVIHQZl1yZ3vr/m1xezLY=;
        b=HeDNSy0dy0otALQyXYhtthHqNJCUUfsMsW4++b9Ia13AUH286FOH5VywjT1fnK/1+y
         4CjHHYcjU0IeXMkeyiKT1stIm2gPFOkppaIES3gT4+G55Nlgmv/zEmfzwVibsfn/5Pyo
         TPJQ7eavNxCID45CzPasF7ftZF37m0GpiaGFPuC26fNMXQRG/g/PmXrDb7yMtb8tLwY1
         m/4/MDCmib/uHu0g6ImT6oSRHrnttrTsiHN4NR4C4KCjeQWdEE4dMi98MvcokaZjEnRC
         VbHPtUOg6TJZY+ht33NVN5Kd61qmQWzLaT7XIo6RMdAFj8fhpVHASZ0Rlc/Q918TzkQZ
         /6hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kEV2MufoCrK997aD9o6AAOyVIHQZl1yZ3vr/m1xezLY=;
        b=w/yB9dIsvtbQ5AWiWuthT7MMFGdX8VQUlN6mU7kn/KQUN7JbY81uJQqFjy35gXVZwV
         oz9fs9pLuran6c/z8W73J30BQyLnGa50cwxLJB5qUdrgPci9B/QyPP1AxKEanxmWEWw3
         qC9OeG4+4umeqitoh/5wmRnsLKrFRBGfpRcAc5KpvwYLnZRvruTd/iOsAIlJXZNwnLCg
         Y1Op+nOtF/aGPisUkomr0/pi3IKBS/+UougA42RFG+G0cdNCN0xqktuhZZr9wmrBqcjk
         tM7/E4Cd5y/rUFOc1X61w99LNu6zSc79xFZ7D+nBZloc03nEaBlCNaDa3Asd1kk6NpTq
         Br4A==
X-Gm-Message-State: AOAM530ikvV1YwMYh3/6m4/srDoXYo696wiUo6j5mMwLxfaXW4RFGpRj
	AdKHlmZtHT1Q9dwbL6VbHTw=
X-Google-Smtp-Source: ABdhPJwzME9sGiKiWyU2Z6Z7TpFyqn3zX+ga4iypa88OJSIePRMCXudmtjz9CD4+97Ild/5OzqskGw==
X-Received: by 2002:a05:6102:4405:b0:320:a07a:1c4c with SMTP id df5-20020a056102440500b00320a07a1c4cmr8079307vsb.42.1646830095804;
        Wed, 09 Mar 2022 04:48:15 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:a48f:0:b0:321:b373:5b7 with SMTP id n137-20020a1fa48f000000b00321b37305b7ls175674vke.9.gmail;
 Wed, 09 Mar 2022 04:48:14 -0800 (PST)
X-Received: by 2002:a05:6122:134f:b0:337:d3c0:816e with SMTP id f15-20020a056122134f00b00337d3c0816emr685306vkp.5.1646830094056;
        Wed, 09 Mar 2022 04:48:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646830094; cv=none;
        d=google.com; s=arc-20160816;
        b=FbZ8Cggrdd25qz6gqKP4ht9AENGZFCnklmbTh+dzfJoZ3ZcKLzc8rA1r5iA5dWvVup
         74d+lVM+/ZiTCLWRZdmGNSJxKk/Oxv7fH5L+faf0wIw3YW2KH7R8z/08Ocj63rbFUwue
         xmXfp22gpGdBHmlgR2gqVLWUuhXI0YDEWp7BEN3pSd84jMWNVIdrUokPBW3Iv/gMQJwR
         y36MyDgWydUePbP3DUdK95Swg4SC8kXbVy3h3RiaKhn/Ncpt4cn0o4el5e4d4yY8vX2+
         8Mp+vZUxzb63blq2OygPE7ameyDHZ4Q3DjN6HMvvW2h0rTtKSDr1+3am903vP/M37m8T
         EwfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=UMM8wlu840tF8IVwtqdqWIgAaYwsxGctdXrS7VCBQR8=;
        b=AO339lrdGGaPG/oZ9MnIxny3mVDNnI8dznpf3H036KoXkPwSCTi2bCqKQjusac7iut
         73C/6eEMgqAQwd+Cqeu1KclrFYZViET4P7AAuP1/GMdcJB5Nv+3+pTwg4pN0NirsrHbj
         QChnYWnLhb5rdFJ16163lw/C0g7GTBaty0q5+cYLMHCmA+Z6DcP7o/+FdX40eV6WJhZ+
         QNU57H7473BczNldXPFiVdKrS1/3NIOSpGS7DPIzlScTUM44mPEie2y1iqkMF9oybiya
         nkAC5Z3uQUGFg8F+Hio8VfNB3U7n+OXB2oVgzqflFh6zzRwhLPDY09nsZ11FVgyxTtID
         7/oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id d13-20020a1f9b0d000000b0032f06dfd587si101886vke.1.2022.03.09.04.48.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2022 04:48:14 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500021.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4KDBkb3SSGzBrJk;
	Wed,  9 Mar 2022 20:45:43 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500021.china.huawei.com (7.185.36.109) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 20:47:38 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Wed, 9 Mar
 2022 20:47:38 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH v3 0/3] scsi:iscsi: handle iscsi_cls_conn device with sysfs correctly
Date: Wed, 9 Mar 2022 20:57:56 -0500
Message-ID: <20220310015759.3296841-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as
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

We found a NULL pointer dereference in iscsi_sw_tcp_conn_get_param(),
the root reason is we did sysfs addition wrong.

The origin implement do device setup in iscsi_create_conn() which
bind the alloc/init and add in one function; do device teardown in
iscsi_destroy_conn() which bind remove and free in one function.

This implement makes it impossible to initialize resources of device
before add it to sysfs during setup.

So this patchset splict both the setup and teradown of iscsi_cls_conn to
2 steps.

For setup flow, we should call iscsi_alloc_conn() and initialize some
resources, then call iscsi_add_conn().

For teradown flow, we should call iscsi_remove_conn() to remove device
and free resources which related to iscsi_cls_conn, then call
iscsi_put_conn() to free iscsi_cls_conn.

V2 -> V3:
  * Fix some bugs and optimization the code implement.

V1 -> V2:
  * add two more iscsi_free_conn() and iscsi_remove_conn() than V1
  * change the teardown flow of iscsi_cls_conn

Wenchao Hao (3):
  scsi: iscsi: Add helper functions to manage iscsi_cls_conn
  scsi:libiscsi: Add iscsi_cls_conn to sysfs after been initialized
  scsi:libiscsi: teradown iscsi_cls_conn gracefully

 drivers/scsi/libiscsi.c             | 23 +++++---
 drivers/scsi/scsi_transport_iscsi.c | 90 +++++++++++++++--------------
 include/scsi/scsi_transport_iscsi.h |  5 +-
 3 files changed, 66 insertions(+), 52 deletions(-)

-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220310015759.3296841-1-haowenchao%40huawei.com.

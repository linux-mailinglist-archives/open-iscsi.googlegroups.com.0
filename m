Return-Path: <open-iscsi+bncBC63XVGIQQLRBSXK6KEQMGQEHOLIGWY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADAE407874
	for <lists+open-iscsi@lfdr.de>; Sat, 11 Sep 2021 15:55:24 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id p188-20020a4a2fc50000b029028b072e133dsf3244784oop.19
        for <lists+open-iscsi@lfdr.de>; Sat, 11 Sep 2021 06:55:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631368523; cv=pass;
        d=google.com; s=arc-20160816;
        b=AaBlcrnKSP3sVGA3Yx7i2q7JwwBkU9s2hhBMUw5GUyFjjUVWFNBwmYYkU/FnARVxg5
         JonP6Yqn7hu0H+VugTRBPXK1uSxoCsBR8C+PeMLvkSe0d2UWu06/kixUhQKoJxlFUigL
         o3nIrCu8OlCgxSP4zYI4uf1488AOuNrnAp9is8AHmjXXv4PhLDYL8Jgy224QhC/9VdJJ
         GP2/ndVL4o5Vo11tYkUul3R/yCWsCJk5/7kjEqbuYyEtvyspqC6V1OvRo9+DRi6trSV/
         nNlLxGpgwHylkX86gFXz3xCWXDb7RIXRYoz0P1JsX0xal+PJoGjZTR15sF1gBLmXhYTX
         mfVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=1t2hV8nJ4Q1ZTh66Vl4ufLE/E2zQ+6PCaf8+tnctMK4=;
        b=zxNAmCYB6fk5AB4uiRxOWktZSQiGP2zdOURICQ4/y1t2a4jODjmq223DMtvmWt68Ls
         oipfL6wA6O/O5UFnzD0epD6TEjcnQaQXkudxpHARELvPeQF8ZOeIR3mnRVxSl2T3yOpz
         beqyMndbnOT8EbJ5pHqoR5hrfiR+MtVnCK8++HqycLuXiA8qi8vNThXkCb1SZM5aqcSz
         PnJu1qkS1ivf0dDTKP3RVDlRVk8jdprNKP0y3nN/spIeKIZufePfeyBvEbB2ayBUnLX2
         ZM+zsg90ZZyTggW0i+pTJpUqWEDF0egB1i8NGHlK4t9s8eYjKo3PhngZ7CBgGDoI1AjA
         a/Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1t2hV8nJ4Q1ZTh66Vl4ufLE/E2zQ+6PCaf8+tnctMK4=;
        b=L/QH6hTBNpEZ4qTQnXNX5DxS0npb25ddesvO339pOVIQ5Aa7H24hNGtwRaufiX3GGu
         pXpbKgnGd6jL7wfyqspXccAirLK9vuMvVu6dPGSUzzhcq7LzqK3tQzkv/+AkwHYrS7x/
         ODXcHqaWQweF7ihsNI+mbCbmmM9W5dTXYHW5HhBINlGkJS0iV3F2n7193EjUgf2qRabv
         vCOgrrymKHeOCjanVZ46MAaYEN90+DubJOFzWcZWlszjmlLj5EtYUJBsyAGkozIKcF3O
         asA7WzBeKaPSzwNqAvyHfz21Qcx4lsNsrTwa+IaG6KYiW80sbD+JxUE7bT5Xpu/+HTYW
         q3gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1t2hV8nJ4Q1ZTh66Vl4ufLE/E2zQ+6PCaf8+tnctMK4=;
        b=JXj5fXv83lWGpp3ygEDYSlOPG16P3uCBalDSRGi7fOLW7fGvEJGu/dh5cvi7rhCO4g
         3bKEhO4wxECgnv2gfQ2DLHPzN/ewMHbVhHvj2vzwMSbxxfZjXkJecmldQ7k2sMBnRGnD
         HCbRiqdOAeHWetwEcIjfNr03370PV6zcosKn8QqqE5uz1sA7NH5qKSR0aoYEmZ30GJ01
         n3SAE/Osc3TRV+UrDVn7S19a7Plx2mp1lCEKzF1k6/1sh711E8wfVNpmYODSTyg54F5k
         OHZGKmYGwXTkqACZjc1U3M2F2Rrn/VSGnrkqqQZvtThnTrOGfcW9eKi7o3d/fku3f2Oq
         35bQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533qO276Sp0+Y8UnlGV10/5JkOm0yjss5WaESyrJvhuvw+/g2WTP
	4WIXP00F1DFX03u0W77R9us=
X-Google-Smtp-Source: ABdhPJz0KqOvajF451zL0y/SCl1yYnfmETkfRx14oWlFNmkLbAvdr+Ip/7fryZ2CSYQHdr8nXSTJTw==
X-Received: by 2002:a9d:1408:: with SMTP id h8mr2447118oth.151.1631368523136;
        Sat, 11 Sep 2021 06:55:23 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:1208:: with SMTP id 8ls2177399ois.10.gmail; Sat, 11 Sep
 2021 06:55:22 -0700 (PDT)
X-Received: by 2002:aca:606:: with SMTP id 6mr1938304oig.82.1631368522636;
        Sat, 11 Sep 2021 06:55:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631368522; cv=none;
        d=google.com; s=arc-20160816;
        b=nURfN/d0IQlq+cKMosww5wy6qmrUA9UENA87+MS4/82UCD7tYugZPjk497kXtusgCB
         py6nveD99OV6ewIFdzdVf1AKcwxAIFS6ytPDqSCjmPwVnLRUCAXlAGjsDf2I+AHqhM0B
         pLmGMqSG9M0RWjtC3kFdx+ICVFEAtR1VcYG9nKabl3iaa27Yb988tMIpQ6fOY+zqc3EA
         j80aU3fT226F3RC/pSScaeYSmaTyBsIBWP+qoG+JSXbHgmVOMfxY7eqakx+doOUCP60i
         l/G3MRHG7sAKus/1fxDmKNMI7zEtz5ZSjjLepYQ00EWqfrTAAKfZdEmu/20kV2SHQvHz
         8g/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=vM0/gzEBgPOCxeWrAPOozBGHIar+EzqaOM5Z/0ZHWtM=;
        b=B3xP8gQFyNhpy1aFCaihAqRe2m7mx5xHzM9/HrMG0kulsUvtlsJeDffih4QYqrF1jI
         JJWJAFqmpjH8yp3vQ3ZWq1jH1O5p/yAntUN0IyLibY0zdK0CMLeVVx0Qxt4JKtatJDMa
         MiLi6xrew1eEx9wMeQw8g+1bsdzRDN3UKchMxPGiLr76XyuwPJ9qlHbmXqOMV7pbIK16
         2a94vCUSvZFLf1TEU/tQBio53vub0WysKSW1dJdvy9XlYjNlnNKIlbZuGqVg5qX5GEbL
         jgJr2cgjiuGyrRGP1Txr3BACxJAhj2YqReOjbyE5BX9vGyDjxXymYm5PJbnt7sULBwgm
         IkiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
Received: from mail-m17642.qiye.163.com (mail-m17642.qiye.163.com. [59.111.176.42])
        by gmr-mx.google.com with ESMTPS id q18si180835otm.3.2021.09.11.06.55.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Sep 2021 06:55:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) client-ip=59.111.176.42;
Received: from localhost.localdomain (unknown [113.116.176.115])
	by mail-m17642.qiye.163.com (Hmail) with ESMTPA id 42E20220148;
	Sat, 11 Sep 2021 21:55:19 +0800 (CST)
From: Ding Hui <dinghui@sangfor.com.cn>
To: lduncan@suse.com,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	michael.christie@oracle.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Ding Hui <dinghui@sangfor.com.cn>
Subject: [PATCH v2] scsi: libiscsi: move init ehwait to iscsi_session_setup()
Date: Sat, 11 Sep 2021 21:51:59 +0800
Message-Id: <20210911135159.20543-1-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
	kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRlJTRlWH00YQkhCGRhDGh
	lKVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mkk6FQw5MD4XDhxCQxcpMRIp
	NTkwCTVVSlVKTUhKSE1DTkpCQ0pJVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
	QVlKSkhVSkpNVUpMTVVKSk5ZV1kIAVlBSUhMTzcG
X-HM-Tid: 0a7bd5241f57d998kuws42e20220148
X-Original-Sender: dinghui@sangfor.com.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as
 permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
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

The commit ec29d0ac29be ("scsi: iscsi: Fix conn use after free during
resets") move member ehwait from conn to session, but left init ehwait
in iscsi_conn_setup().

Although a session can only have 1 conn currently, it is better to
do init ehwait in iscsi_session_setup() to prevent reinit by mistake,
also in case we can handle multiple conns in the future.

Fixes: ec29d0ac29be ("scsi: iscsi: Fix conn use after free during resets")
Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
---
v2:
  update commit log
 
 drivers/scsi/libiscsi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 4683c183e9d4..712a45368385 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2947,6 +2947,7 @@ iscsi_session_setup(struct iscsi_transport *iscsit, struct Scsi_Host *shost,
 	session->tmf_state = TMF_INITIAL;
 	timer_setup(&session->tmf_timer, iscsi_tmf_timedout, 0);
 	mutex_init(&session->eh_mutex);
+	init_waitqueue_head(&session->ehwait);
 
 	spin_lock_init(&session->frwd_lock);
 	spin_lock_init(&session->back_lock);
@@ -3074,8 +3075,6 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
 		goto login_task_data_alloc_fail;
 	conn->login_task->data = conn->data = data;
 
-	init_waitqueue_head(&session->ehwait);
-
 	return cls_conn;
 
 login_task_data_alloc_fail:
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210911135159.20543-1-dinghui%40sangfor.com.cn.

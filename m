Return-Path: <open-iscsi+bncBAABBYN65GEQMGQEB2ER6RQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 563B6405D4A
	for <lists+open-iscsi@lfdr.de>; Thu,  9 Sep 2021 21:24:19 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id i2-20020a05683033e200b00538e5aa7d41sf1660496otu.1
        for <lists+open-iscsi@lfdr.de>; Thu, 09 Sep 2021 12:24:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631215458; cv=pass;
        d=google.com; s=arc-20160816;
        b=wYSwTGv9LzjjUfBt7jkpu2p0Er1hD2zgt5QuLWZ4o9HIFU1Ce7foz3SYnYBfb2ff+c
         xXQeioBLhs0ItJbsN/15S9v524pZLWq0OMqFiKASNdmzZyE1y7pB14x8Rf8TziQazEKO
         sUivFTWs2MZzv1CCuInEfrNZyRvL1fjGlmmh4pqT1myiwN0xUJFa1ihbdroZLOaPSLBL
         II4Sp7XXxqC9WAZ+RxIYkZzC+vtiBmUtzuNyyJkx/vqoimNgOgOEx8nX8fG34c885K5A
         0A/8i7c/Fok3soMNXkBeKEPSM7+nP4lQ8drWgVlTaJYQ0I0ETVVJn6B4Jz4M6ZEuXTrT
         y1Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=PqIhRxvOCmPJQDZXVZDajR52hNcqIBpBv7qXvyxMBJw=;
        b=j2/jxSoO/N+k0pELYHl71HpRSgSO1h66vICMYIKFM5elkZsyvO89unTRgHwl0l9Jpv
         Baim/WhrC38uUmu1W+j5GRbwQiggpV/DaZYKsnaQrx5/DQbEnBtZDekNIQfexHe9clXJ
         Tufl/tgxqPm2I/aDuyl1gMyHsCCd5LgE2BUq0kcD7Yx5WEPAigfWOq/iTN/y90yR67Qc
         7TSToNUGtMwqNvQRc9C1J4DI05U0h7mZOlsWJwytK5jAT3yDrydnZBSJ9x/ctbURV6mn
         QJSTaBFm2IWsQj/sFyty9KnAspVR99r3QdZEKW3jbAoJaF+P9YdHhCeUb67IF5nUVsDU
         W2pQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PqIhRxvOCmPJQDZXVZDajR52hNcqIBpBv7qXvyxMBJw=;
        b=mDr9j9rvuauJ/7wS03LBrQcfpdRKZbKfmwqC43JTv2g16fM3jTOH3Z7r5wiogs22sB
         EZzgzxHXsqqZSokdM5cjbx50nsXT80ViuriUPM7ZimkF9w8YLaum/P4Due8pq62Hv3ua
         WFftJd7hfDSx92sGvhM3W5ETrcExI1Zn69sgpYfAPwboDd5KerKQ0PGwk6P/CqnuZZNN
         d8MOF2OpXoQfCRXA6CQ0seMZyaFUzOIj5oboVZYv/3puXJHDBlyxKYtutXVZTdLYWU1/
         aN1LJSuqk9pbKYu+1X8afw8xcZuRw5nAChdR6UvYB2K1qvVrsKAcY/1w2QXzwNkb8b60
         ietg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PqIhRxvOCmPJQDZXVZDajR52hNcqIBpBv7qXvyxMBJw=;
        b=AvCMVHAfr0+cQI2qhy3yNwtTBBMTOHkLoFcusMjLkhpHu//4ASRkQ6VjiKh7aZIlQ9
         0PbHRROXDX+1Pj2xA4J2elCjelFDINKUmwS+0AOwl6kZynO1othRv0JmdyEXs5ubBmRY
         1tyYn5s4McQT/sB38AwOY4tM9nHohWDlZc86XEtdYi5VlEekQGFRmATVjIXIjbesNXev
         i6sxiBtaaMfvw6N0iKRgtLHeXTk5cFr1lHvn+iXo4GtB5V4NW7l9vhNnJwX+SOzbGKdz
         5tW2ZgSIK9PHLIS7JPYdwDUs3dgh3g9LEZt76ujWwW8D2vdS/BE3XI5kYe8zriqgB9VN
         04pw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532TOd/oTYJGSJdNw38yBknVn+2K0c64ovc6g709dmaFKmJVM2zR
	W/inkBv4Raxwh1tDC3SGJSI=
X-Google-Smtp-Source: ABdhPJywzUpO+pdtphrdauTg6q3eok6y5iHKGtAmu72TnKW1RUtpme431ZVzBw11lJ2pdG8g8yzumA==
X-Received: by 2002:a4a:3944:: with SMTP id x4mr1156089oog.69.1631215458028;
        Thu, 09 Sep 2021 12:24:18 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:2143:: with SMTP id r3ls878078otd.0.gmail; Thu, 09
 Sep 2021 12:24:17 -0700 (PDT)
X-Received: by 2002:a05:6830:4b6:: with SMTP id l22mr1270455otd.129.1631215457814;
        Thu, 09 Sep 2021 12:24:17 -0700 (PDT)
Received: by 2002:aca:4bcd:0:b0:25a:47c7:7cd9 with SMTP id 5614622812f47-26dbbef3202msb6e;
        Thu, 9 Sep 2021 08:48:04 -0700 (PDT)
X-Received: by 2002:a17:902:edd0:b0:135:b351:bd5a with SMTP id q16-20020a170902edd000b00135b351bd5amr3298120plk.52.1631202483906;
        Thu, 09 Sep 2021 08:48:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631202483; cv=none;
        d=google.com; s=arc-20160816;
        b=UTmSBDl4T92K/yi18mS7xEH/Lzs1VlObdYCd09Ur+tiCEeg+TbltVGOpqM2L1A5nD7
         2DvWuNU4i1iy/AT0YFSSSNZ0p+2Y7fj1P/s9FObTAlWgsQ0WriA/N1tFRiXi3bQs4MNc
         5Lvasi87S/UGHIOealzQ5pSZEvQUmdNuAofeGtbSQqIAXh4FNuUq8z+WNays93A1wB8Q
         DTNA0gyhVOn000ZN5oPTzbKpSicEepxeihE8Mj9f2y0h1xX++qJAVG/17GDpGlBkxA3e
         VUnGRaDU8SlTrI12C9Y2UsURU8zX/NgJIZn20hn6tJgO1ODGrLpCKvRjlYQVA82B1Gqs
         MF0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=5IKxfSIVmM+pvYliBzujoQUaZGVHElpQwjWBJfPA1DI=;
        b=H+yhwuYS6kmxPR7lGPpN5Gi4DGDJwWeeDrkMisHoUBu2+vhAWVAvaHnoi37GBwvaJE
         VcptqK2DRPdOwQg0BewfVobkZTW4xBoHL5PM47zf3zQazFYwhw7SQ4K/q0b/tETVHItg
         hW40vBF0SI8zLfV5A0D717QjO17CN1f2baslLq3JE2RL2u87DP5cbOo1tcxvQ+T8//aU
         PLazspa1EXoh074e34fZ3ekfI61B75MYIaShMGIlyEHbttlenqtWMbVu3VfUAPnlGIZ8
         hY9q4GRA5t+jCpeAfOKH3u0Wywp2fLuiA6R7lLxz4UlIwmHZ7PeGsR7gez+JJ1/RsRv5
         7sEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
Received: from mail-m17642.qiye.163.com (mail-m17642.qiye.163.com. [59.111.176.42])
        by gmr-mx.google.com with ESMTPS id v7si191194pjk.2.2021.09.09.08.48.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 08:48:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) client-ip=59.111.176.42;
Received: from localhost.localdomain (unknown [113.116.176.115])
	by mail-m17642.qiye.163.com (Hmail) with ESMTPA id 3BE3F2201A4;
	Thu,  9 Sep 2021 23:48:01 +0800 (CST)
From: Ding Hui <dinghui@sangfor.com.cn>
To: lduncan@suse.com,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	michael.christie@oracle.co,
	open-iscsi@googlegroups.com,
	linux-kernel@vger.kernel.org
Cc: Ding Hui <dinghui@sangfor.com.cn>
Subject: [PATCH 1/3] scsi: libiscsi: move init ehwait to iscsi_session_setup()
Date: Thu,  9 Sep 2021 23:47:27 +0800
Message-Id: <20210909154729.20715-1-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
	kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRkaQ0lWSExMQ0tJTUgdSx
	lLVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6K0k6Nxw5ET4ICh8QDRcOM0IV
	IS8aFEJVSlVKTUhKSUtJT0NKTE5PVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
	QVlKSkhVSkpNVUpMTVVKSk5ZV1kIAVlBSUpCSjcG
X-HM-Tid: 0a7bcb3e9529d998kuws3be3f2201a4
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
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

commit ec29d0ac29be ("scsi: iscsi: Fix conn use after free during
resets") move member ehwait from conn to session, but left init ehwait
in iscsi_conn_setup().

Due to one session can be binded by multi conns, the conn after the
first will reinit the session->ehwait, move init ehwait to
iscsi_session_setup() to fix it.

Fixes: ec29d0ac29be ("scsi: iscsi: Fix conn use after free during resets")
Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
---
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210909154729.20715-1-dinghui%40sangfor.com.cn.

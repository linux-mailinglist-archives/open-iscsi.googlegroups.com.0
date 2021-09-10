Return-Path: <open-iscsi+bncBC63XVGIQQLRBR655KEQMGQEGLHTC6Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B634064B0
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Sep 2021 03:03:04 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id i5-20020a056e0212c500b0022b41c6554bsf260622ilm.10
        for <lists+open-iscsi@lfdr.de>; Thu, 09 Sep 2021 18:03:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631235783; cv=pass;
        d=google.com; s=arc-20160816;
        b=DKZnokdIl43LPRwdId0tzBByCMQ0G94UMLeYE0CmWoq2vq/DY1jHFzegIrYjDkG9RQ
         irjpI575sgliOMWpi9ifTNU49qvGeXTbYiG0w2QoYPffOdodh2tnFAzwcPZDir7zW+mZ
         HgVCm2vcwXkG+zL1jL9p1kIMBH7KeLip/B1WeIYznOVP+IyTh9R8DaHAO171Ci5HcBjl
         RwrtOiagyTDOH1G3as/iHKBjuVwRFV4pqGteFgjACpWiKmyxeqCeYTAytbPzqknbdsgq
         f8Jp6TmyZiZg3BF0cODVdJ5PuaPcNoWmg9pEERauQKAHr1+F+PuXMSXr3fGckPawkFhZ
         CksQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references:in-reply-to
         :message-id:date:subject:cc:to:from:mime-version:sender
         :dkim-signature;
        bh=rqGYsiSz0bQV6W53VZRAHRFVA0o9Oc73xQkgQdZ1FWg=;
        b=dtjVkE21N35KYXcQzqCdfwI9vEPY6vy/sgud9mItga0IdjGGBrI/xy+leNa30xJ9Eh
         pu7WhGKL+NFg5rL6sm8BIF761KvcEYvJLB4Q1FRxTsJDiN83belgHyDFZp9s6imu3GDw
         6E6aV5OsW5A7PXv7J8jsgTK+bOB0k3l9ugZvayfl3UJnVsHp0O7eUQRRtttZPcU4Uaeu
         t8p8hafDGCza+Rv8cAbnQcMW8/zEN3HYBy/Mkry+pgqWbn6poFpxprmmLhsxQzpYmOvN
         WpxvApdHhCZoMfeRIouHRSJl5BBDLcaPfBReW13Sp6HhH+DKASvxP1lAVB6VGENPVta7
         d/xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rqGYsiSz0bQV6W53VZRAHRFVA0o9Oc73xQkgQdZ1FWg=;
        b=IxIt5vu7NbnspXMcx7Wdh5R46s5LlTr+UcAygdgiCtcF/FEVs1EcZpHobUXSl4NC1n
         9xE1Gjp60t2vFfRfDpz1U11grPqpSkOnNTWoROZce7ixx9Dp+Nr1lmpahIFWpfAXMO/+
         2HIEB1sL5H0QOWEPSCTpSCc+VNFeHZE8kTUz+qeVHYnn24BaWyeLZihkKdauWI86rjL0
         8tUeU5Aa5kgiLd/IMYyZ6XwNrjS/mxTZlUl5dqmma+OHrYF8lKjPv0ltKmk5hp41Bhc8
         tI5z7UU+tOAnDVmkwkih33dJhKxiTnVqM6FEuaw+LqFtN3ghiDx6VSHkdPICyisU8ojt
         Jm/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rqGYsiSz0bQV6W53VZRAHRFVA0o9Oc73xQkgQdZ1FWg=;
        b=XQOZp52T2R8PRlfK3IwpCEKyYn+awRaRMB6SpNjARObhioi5P1iYRDLMxYqw/er3df
         Q8PmMtv6WGcRjpY4n31fYhA8B1+jEQifNfwdLMvUmZifn3BEBDx590rF/bm9x1j3eB3K
         Qy/2mL5yG7VwfjaSa5vSbaBJNRWWO1NuPuOwuIzKG6RZhISqRiej9PW8hfo+pSwRsdaF
         ZTbPKTBD4Q8T+Hz1sD4Ra3HrqoMpX48JsZ3kDzNlPgmM6etlT6d29CxjUwZNCNC2Ow3Y
         AAa2YOnEfV5H42tTVWMGH0MyFaKwNocRQ5sukhKl/1Cd+FxFPYWSYEofmwijmij6rZFc
         U/Cw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533hNrEThj4dczY6re3dMkd8gr6YEHGM9OAWIKvmoGnGunk9/cNQ
	n8hm5Qfd5H0CCZDr9rPWiU4=
X-Google-Smtp-Source: ABdhPJzkDiqCIiq617EN6Js49kAHDbFK5fi/mnG+QjcGr1r+71d3ub4MX0qbSU2MNXlgDBmD9OCQkQ==
X-Received: by 2002:a05:6638:2182:: with SMTP id s2mr2282662jaj.26.1631235783288;
        Thu, 09 Sep 2021 18:03:03 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:965:: with SMTP id q5ls793350ilt.5.gmail; Thu, 09
 Sep 2021 18:03:02 -0700 (PDT)
X-Received: by 2002:a92:c264:: with SMTP id h4mr4682932ild.26.1631235782868;
        Thu, 09 Sep 2021 18:03:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631235782; cv=none;
        d=google.com; s=arc-20160816;
        b=wfH4jFZd+/uUJMDa/152Ribr+uyfNmeOqi7cAxHfhy6yShVNkI6uCnZcI1oh5en07h
         KLQi7LUHwLrZPWLiAPOjQZRxV5E55ar8SoVrTIerMOpKXKOjY0NzpokMVNMDjh4XTBaN
         hNOL/qCIg+L7MaLZN8Cy89CQdhpMAN6CJTp2cn7W8SnYRh2VFzlJtzGoOWi5JeGnHjqL
         /BLrJ/UcGnZbnvpJQtKLUF57zFZYmahkZfHs9M23yphqeZ553NkqhzuKRWTPHSZ6CBuR
         qcTKavkP4TuxVpOvzle9aRgFNSVFhyAK4jFyue6NZCmLJYmWPmzUe2CCtcjU+BnqHIuh
         tGWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=5IKxfSIVmM+pvYliBzujoQUaZGVHElpQwjWBJfPA1DI=;
        b=pvkLULwhtzLnuiNAq1FMkvlzdsk3irT+0iw/m0sG2mvtbuge7GzclrvnBal0CbertT
         E0fjKYDO03UE+Eg9PNnVNvoTZNPVeIojT9PEkZcuLZD7l3cnt/6L56VkRZYmP9G6quSY
         rOtRI2wn4hkY34QcC5+3WAL98OnW6vmNywklFhipUkvKWW//SG9trnF4V295iBOWyVY4
         3nSaIVGmFQTrC6VH1ZejL0JWYC7nCV+xMZH+CIFm4+ZFowMqVk070VjY5Ymo/Q1t0qSX
         FR+N17POgaJihn60iW4EMix3pEcgbjnNp51vXGV1GoDI97I0dC8QZbGFG3/nZxOFuMcZ
         zgSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
Received: from mail-m17642.qiye.163.com (mail-m17642.qiye.163.com. [59.111.176.42])
        by gmr-mx.google.com with ESMTPS id x11si301289iog.4.2021.09.09.18.03.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 18:03:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) client-ip=59.111.176.42;
Received: from localhost.localdomain (unknown [113.116.176.115])
	by mail-m17642.qiye.163.com (Hmail) with ESMTPA id 9205B2200DF;
	Fri, 10 Sep 2021 09:02:59 +0800 (CST)
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
Subject: [PATCH 1/3] scsi: libiscsi: move init ehwait to iscsi_session_setup()
Date: Fri, 10 Sep 2021 09:02:18 +0800
Message-Id: <20210910010220.24073-2-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210910010220.24073-1-dinghui@sangfor.com.cn>
References: <20210910010220.24073-1-dinghui@sangfor.com.cn>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
	kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRpCQk5WT09JSh0ZSEJOHk
	xJVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ky46IQw6FD4PLB40LSMaSANC
	MzUKCkNVSlVKTUhKSUhOTENLSU1DVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
	QVlKSkhVSkpNVUpMTVVKSk5ZV1kIAVlBSU5JTTcG
X-HM-Tid: 0a7bcd3aacfed998kuws9205b2200df
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210910010220.24073-2-dinghui%40sangfor.com.cn.

Return-Path: <open-iscsi+bncBAABBEXTVGBAMGQE47J4FDY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 507B6337EC2
	for <lists+open-iscsi@lfdr.de>; Thu, 11 Mar 2021 21:12:03 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id b18sf2619852qte.21
        for <lists+open-iscsi@lfdr.de>; Thu, 11 Mar 2021 12:12:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615493522; cv=pass;
        d=google.com; s=arc-20160816;
        b=mSWQKy9TGSF0ahpRQossXuiCJ4uwfIhtTa1BmwRRo2VhD8cWB0+tvYg/thHEM37BWX
         ORV+MtiEeqJo3r4gxmG8P2dYjTSwNs+0CwuE5dcJRIv9/FK4J4pOtCV6D4tLAJEJSwZh
         Bvuu0S4WI5RML3dvfVvimavR0wef7veHSZynloz89o6NrteDql8+88kPSVdyG/8CCcYK
         OPbWgoaWbX+QmPTlBB4igAtW5pcwCS9Y3wzavgU+EpTcTYsBb7xh2+XVAVTgG+Yz3jcA
         +Sz4g7FVIeNwOpdvMIRzclhxDT3yNwyRjqjf3M6Dr7sX9lr3PKVpkRYFJ7gM2b+Vpnpe
         UZjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=1i+H+IaH8zrXd0skRoaf5XnM/S5o1yxLZVEmRZEWEcs=;
        b=0xvLKkJmP3epvN5h0g84oi76MYv6JEzWFwgcBE7CHy7szS6upapY2cuZqNNmG5zaou
         6mAJkU9IcI0WGNdeQNBFImG6lLq1/g+T3Z5PG4eHu1kJi1zEwEGogf/C6Hg8T+q/+tNd
         q/woV64/TyQfLqnCYv6uxsE/NQHZefS1/lKUJKYpnkNRDff0u4Cb4Z7OjIGQXOYDQK7q
         zR3fL/gbgVzkKjs9yozJ6xtot6iBCGoaBJrhEah2D+QwAsuAHoUqmzQjeCgNISOjcBad
         ow3mmS6F8xBXACfhQIsOrkRNzoEaR80TXQYHCTUS/1IJNTGIVYxXDlsphqqbxg7bChHu
         77gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.130 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1i+H+IaH8zrXd0skRoaf5XnM/S5o1yxLZVEmRZEWEcs=;
        b=euiq4kPMlOyWDWak8Zo+y96ugoSa/VdWh6ihjlxydfRAokbFWsEUF4RHwj0cbEqVX5
         0Pd0nosPjrKfTKP7MfmOeH04abWOly53g3hQ0gUuiZ0JFpW/YE5+wSLIwncMuEGV1zW6
         PrcUsqfD7MITPLqc7TRjqjbL0hPAtjMSmq4BPrvX6n9nxwRr6XuJWTgc08K8UZK/Lz+W
         f9NXH2n+y8gI7IhXsW6/rRfJqtqQoUfuh/4HGrgpyLXfclU+gBEVcutmIK8PZsJPs2eY
         pnhy+Onozet73VxflrFQ+OPJqzqdXcvF0DRlY7gA/xMG4xJIpesvicRSEXg/1Pu/vENn
         OGzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1i+H+IaH8zrXd0skRoaf5XnM/S5o1yxLZVEmRZEWEcs=;
        b=AML/NJPCZD+hA/fIeqzimGxb6k/DFnbWAIoZx281X7tKUwOHdzpM7yqgNVQlY9IzZ6
         kSGIuylI7VBgpHmfMBxlz8Vf+CbOOvNZeXFZ9Z9vyti3NaFTorrEXtWaTLoZldqRx73e
         8O7CO3K+IsE/T0PNW4v2zDJJ3HQLX/HOClVs2PwHwjco0r8ji3c5yX1BvtOomF8nr6fG
         y1qYYt8wgVj/3g34TSpM/BjEgs8FWh4TGm3hzg5HPrKtVWVZmwRQJIsVE8Q+PBEkp6Kv
         jNu1RAV668zaydQU9eQMb2DMtaTpcuJLT8VI25Ly9mKD8dxksTQhNQ4IWtWjp52sUFGC
         vCLQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533LSy+lZqT0bRMvc+MHBWH1Pgmm6QDWaOItZOXxL/nYyurbt3LA
	w6hZp9zxpes4O9dhdd6e5TA=
X-Google-Smtp-Source: ABdhPJyC0FEwxV4/WwEcWMhhkXiV8WnpeU2FRZ4mwlZ1bIRDxMZIeh0W8HnlTyWwgH/QclDK2jSooA==
X-Received: by 2002:a05:622a:2c4:: with SMTP id a4mr4966662qtx.145.1615493522432;
        Thu, 11 Mar 2021 12:12:02 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:a98:: with SMTP id v24ls3659323qkg.6.gmail; Thu, 11
 Mar 2021 12:12:02 -0800 (PST)
X-Received: by 2002:a05:620a:718:: with SMTP id 24mr9416216qkc.121.1615493522007;
        Thu, 11 Mar 2021 12:12:02 -0800 (PST)
Received: by 2002:a37:7bc5:0:b029:281:8987:e7e2 with SMTP id w188-20020a377bc50000b02902818987e7e2msqkc;
        Sun, 7 Mar 2021 19:34:41 -0800 (PST)
X-Received: by 2002:ab0:4086:: with SMTP id i6mr11597917uad.21.1615174481246;
        Sun, 07 Mar 2021 19:34:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615174481; cv=none;
        d=google.com; s=arc-20160816;
        b=xrUYHekQTmqCHtRX3m2ApKIUeSW5fdJi97o+iDTICrZvVx9srtVQHhnC7AGqt7dkYu
         lERfzS53VpuHEAi27whYgZjrjXXKvEYulytWFm2QcKsurXz9GoB50+OJYd33Ogoe5ef6
         9Ba/O7nVRUmeGw5whyErNZ1ChoDHkBKitbLfVoBVCfOpMQRJm17C81t3AOjsmrJA/HYJ
         BHg0TFcJmPdAgh9QcqktbjVGm/UBEvKuGmfV4wWNUr4dA9vNeNwmkJYK2/mAqAa5fij1
         Yvro+pZESa5VnTtuwOWHD9phXvuK/xTQlX6rT7p9g5g3737EEELd189++m7ZFwP8jJ1W
         MK7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=dS4aoNnIEuBViRaaZklvhh2/ySCyxzvV2VZ1qWqcFD4=;
        b=JCxedxm9qi75rMvaiznu3UZMIliySrFKAiTNHInxkCPQA+X4jFtEhz72Chc6rsCWIG
         MUv0OrLKDy8SrInmr2a59h5iLlwEKLoV86XQU8p8e28xdmoHNsh9cMAM+DRxd+JZAPsj
         +RNhyInpll04i6pmtXHvcnzTVxF407sdsUSzOJ31XhyslJXB+ZZyhbPFXtdi3KaRpZbT
         oTK4BTqjYknewc+veZBKyxxTOcchk6ysKhQk4jAj1IZuxkKUIyXJfW5pnO0peXZJusc+
         fJWRIR3cOmYRzOCaJEXyjA9tc3nW694/0bWboqd4R9HkqlzirIHWyLSuvxFPIzW8pp/r
         UEoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.130 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-130.freemail.mail.aliyun.com (out30-130.freemail.mail.aliyun.com. [115.124.30.130])
        by gmr-mx.google.com with ESMTPS id n3si577997uad.0.2021.03.07.19.34.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 19:34:40 -0800 (PST)
Received-SPF: pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.130 as permitted sender) client-ip=115.124.30.130;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R501e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04420;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0UQodxFV_1615174471;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0UQodxFV_1615174471)
          by smtp.aliyun-inc.com(127.0.0.1);
          Mon, 08 Mar 2021 11:34:37 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: lduncan@suse.com
Cc: cleech@redhat.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Subject: [PATCH] scsi: iscsi: Switch to using the new API kobj_to_dev()
Date: Mon,  8 Mar 2021 11:34:30 +0800
Message-Id: <1615174470-45135-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: jiapeng.chong@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jiapeng.chong@linux.alibaba.com designates
 115.124.30.130 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Fix the following coccicheck warnings:

./drivers/scsi/scsi_transport_iscsi.c:930:60-61: WARNING opportunity for
kobj_to_dev().

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 91074fd9..a01275e 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -927,7 +927,7 @@ static umode_t iscsi_flashnode_sess_attr_is_visible(struct kobject *kobj,
 						    struct attribute *attr,
 						    int i)
 {
-	struct device *dev = container_of(kobj, struct device, kobj);
+	struct device *dev = kobj_to_dev(kobj);
 	struct iscsi_bus_flash_session *fnode_sess =
 						iscsi_dev_to_flash_session(dev);
 	struct iscsi_transport *t = fnode_sess->transport;
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1615174470-45135-1-git-send-email-jiapeng.chong%40linux.alibaba.com.

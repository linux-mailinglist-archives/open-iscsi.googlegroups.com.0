Return-Path: <open-iscsi+bncBDTZTRGMXIFBB3HH774QKGQEAXF2RXY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 9895124DA24
	for <lists+open-iscsi@lfdr.de>; Fri, 21 Aug 2020 18:18:54 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id r25sf1676780pfg.4
        for <lists+open-iscsi@lfdr.de>; Fri, 21 Aug 2020 09:18:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598026733; cv=pass;
        d=google.com; s=arc-20160816;
        b=HfUjXiJAYISImxIFpZOaNjE/EH2dOi2ZlsoqPp2cgQxQGES9im+u9Y11/3VBoan4vR
         RGsnf4//O+E7bJT+V5bMHVIEOqz9N5grWN10Qm3fztyl4TUUWgFAlmli/uwhZyaDxvGJ
         6MJtrWab216+65E9mBwFmN82zPzsDf0I4PEMXTzpN5wUxt66G+NSwnLaypC7vzYqTSjK
         REm3LCiXZitY/ofieAMySHKoCvVuDNGawdeWPsTHr53QgSQENJ9hPuBAAXvsbbcdrQAj
         vujKyFrowY7Ul9pobWGGPStt22unRRHLoeqZ2JUS+g1kp8bn0UXvvGe6UHVwYZksL251
         Fl+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=4XXJeswOIG1M74WkJv7kHXAw4YsNftYbYTB43l2mDdI=;
        b=XxTKjuvy6JrtC877hvRP3aouuxBDE3ArmNLRSJDfWv3cZY6SBYtJjIUS0nVs83+iPa
         g6LImozdXPWrhyPTJIbg4uURhbVbEdf6TD7HRIKuKCr8TgJEv3CYocTe+Xr3qkl+JcV8
         3JvarczTI2t/P8a3mkNBGSMbCbQoJh9+xfT0WPwQ6+Mmdqikz1pUjkPNS0daRn41xcOr
         TkqGAY7lc1MNjMN2Qy5NqM76CHSllsKwLDWvH7+Vw8IUkF9of9nxal7rApMsmrNI1/W2
         VlK7R50HSg6vjKjV/l6egDr8hpNF9BweFwzrXMhOd/OdaI7QmzGL/F5gtA2yxmA8Gs3K
         3KTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=A28RnETY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4XXJeswOIG1M74WkJv7kHXAw4YsNftYbYTB43l2mDdI=;
        b=jEpFRpSGowlprhYkzUUCwD4q4hz5M3yJYaRTCxD6S7pvvsECyV8Nvk6vliio/bzoZ0
         y7kilmQBecz/EWx5gxCIvHEQ9lxaeQLo+IQ3MM0JZpne/q0189lV7tKDHDaTB8NCvhNb
         hfWnv7gQw6mvx66JtU84sZ2LuI21c48ujpI+ec/os03xvQ0N9B/8absXkijFfcSTu/AJ
         0wOYS8FQN6EugmBFsB2gzKdy0FBDc8VGswn4RNydzcY82PsBglEdRMTvz9APbw4gV2gM
         o4UMxGB99aw0YYKGsEPZeDk/odz6OoW8EYN8GCOuOWHRz95J7Dje4YOO/H/iniEOQQO9
         O5VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4XXJeswOIG1M74WkJv7kHXAw4YsNftYbYTB43l2mDdI=;
        b=QXUBYuTQc35zzlpp1zd1Ir2LWe8eAI35M0VMlBQMM0EKpoWsv0qSa2CkJXd7b6AikF
         mz6vJB8TaKFr2Sif0Amp3MpbqPvggTNZ3dT4gTmPN+XOCKrVKvUdXB4IVYn9cjLTUjvY
         t8bbIJHu47vK0AMKxWD6tfy5076IWF6H6VKRuY+u15Hj6gdYspLlBGmPkOBcJInYsa8z
         pdydPN9UL9A7d7f+g+g3XOEI0nYjyQRPGyNR/By2IcSGbT3loOXnQPWnKEsa2yAORRMK
         1nJz/q3ZSqbF2xsa8gdvik4UZSiq6wPSV1nGDRbf+n2MXD2MdPvdV5FBbuKbIcIOAz7z
         MFTg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533wu6RUNSGDymwiuloE5BWx0TECmyotZW/8Cn90Sjqw0WXef9fx
	5++hdCYUmJJX0PI2FAg6MBk=
X-Google-Smtp-Source: ABdhPJxWAPIEr6Y2ypWqNXuwojduWsZNCfai92+JiyjVistQJdq3reul1GAoNvisbCy4Nvs/uW+daQ==
X-Received: by 2002:a17:902:c181:: with SMTP id d1mr2800955pld.296.1598026733139;
        Fri, 21 Aug 2020 09:18:53 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:2c11:: with SMTP id s17ls246162pfs.9.gmail; Fri, 21 Aug
 2020 09:18:52 -0700 (PDT)
X-Received: by 2002:a62:e704:: with SMTP id s4mr3223531pfh.177.1598026732613;
        Fri, 21 Aug 2020 09:18:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598026732; cv=none;
        d=google.com; s=arc-20160816;
        b=vLGFVq1g4rOiaYGW/xoKfiS8B3U2EB0+w0QQ+jqVv1WLpp/jvAolKLWaX73C9gcDHs
         q0c98SSFYvqGRSZOKBQEC/Ok+ybSTpFpVGUz755LercKdQvKBxuKaz2BFmELiFJTr1oo
         Wr/swgwDYDibuNh3aj2cFKHPFhxE1Q2sBvbXhGpCrNDBUyplEcK0kddwONzNFpDnY77q
         YscKVjn+H/CNcwws5unQ/a8bkMYNnDjOOcfgcnE2PWsozby/hW4Y2m2csdQ30HVmTy46
         6xUJinGzEaLDvjY2D9vgcK6Jz+3Ap89FIDj0q7+CV/QCxauvhZOgueOJ6xt8lhYBmxhJ
         9FCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XStPuPYdJdzWftOhzLPVw75nIlIiz6L4O1L41AtY/Cw=;
        b=gcVVcshtyT/G14ywNN+K14qR1qSFrUBy4fWAxDdsryrXQ5PXGqUWAapPofWhmv3udb
         yT2e0b4R1JwVllBEODs21q9IX/5/eIewFjAUQ1Rx4dXVfs4sqgzzjub8/2qhVvg53unh
         EmkWsM8C8E5l8EzVLMI2eAXnX02CRU1CjPLvpxbAGS1WEypTUqAIQVkJjGAVVK0ySdcY
         Y6h1NUh1l+PTw9ZnA78h5zlfCO+2bseHFCfHpDaA2aO2DIdd8soL8TOYJB3o+I8RIpzC
         vEkeIFGQKBEFbIFvfMp59CvYa3+tnwbmNkt1zKqakT/9zicuPgNyRdno1kLSi0T12D/m
         xHDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=A28RnETY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j4si170536pjd.0.2020.08.21.09.18.52
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 09:18:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 805F822D06;
	Fri, 21 Aug 2020 16:18:51 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jing Xiangfeng <jingxiangfeng@huawei.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 35/38] scsi: iscsi: Do not put host in iscsi_set_flashnode_param()
Date: Fri, 21 Aug 2020 12:18:04 -0400
Message-Id: <20200821161807.348600-35-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821161807.348600-1-sashal@kernel.org>
References: <20200821161807.348600-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=A28RnETY;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Jing Xiangfeng <jingxiangfeng@huawei.com>

[ Upstream commit 68e12e5f61354eb42cfffbc20a693153fc39738e ]

If scsi_host_lookup() fails we will jump to put_host which may cause a
panic. Jump to exit_set_fnode instead.

Link: https://lore.kernel.org/r/20200615081226.183068-1-jingxiangfeng@huawei.com
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 04d095488c764..6983473011980 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -3172,7 +3172,7 @@ static int iscsi_set_flashnode_param(struct iscsi_transport *transport,
 		pr_err("%s could not find host no %u\n",
 		       __func__, ev->u.set_flashnode.host_no);
 		err = -ENODEV;
-		goto put_host;
+		goto exit_set_fnode;
 	}
 
 	idx = ev->u.set_flashnode.flashnode_idx;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200821161807.348600-35-sashal%40kernel.org.

Return-Path: <open-iscsi+bncBDTZTRGMXIFBBWHI774QKGQESGIALGI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7498F24DA73
	for <lists+open-iscsi@lfdr.de>; Fri, 21 Aug 2020 18:20:41 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id a19sf1175177oob.19
        for <lists+open-iscsi@lfdr.de>; Fri, 21 Aug 2020 09:20:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598026840; cv=pass;
        d=google.com; s=arc-20160816;
        b=OkEy4T8RVpJB1zc3NtoRgq5+zKuAWbh29YTUSnGuVduXbpNLZYC5JVkxmSRYbuqeon
         L7gKjWCFYan6vLJJ5992EzchRiPNzkrpg25yee/js5dOqpatrc/47PCrlZs9R8VAKtrS
         BYWEWa1z868pE4Qs7bF2n6W6DnF8+ZsjJCeNk/jOoHYCL/UnTyDS66CaBMukFK/+YN7s
         Sdmf5RZsvJyzqyuSPuZk8CwFxpccFgXnkaK73x2DLRtUjVYfr+t65/LsMQnm/s9Uu7RA
         UXYSvvEnHsgxGiIEIGk4i0t5nlw1plAthjC6VD5jAWx0SNrlXDF7I2+gvVyQCs670OLW
         qxkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=TLyQdhB22AHTBJzEZW2vPTJobr/MPoVAvAAFzOPLSaA=;
        b=inU5STbAE/xu7EYMbi1wu+Tsh5VG2R4Eloke2e2LAyfQzpxOVpWAJ8bw3NXjY8R2sT
         JyuLZib39EWd5G07gKnQHkGwoL4PB8+cCBnVt4vP1ussz35o/2BHznEgKWuZcKcd2XUh
         M940gxUWqQWQ/54KtsFPq64gZEQIdzhw/2rcdBxfNIVIWkkSsrn/9AQxx+XJXNznfq/m
         ZpH+/wiuqGrx+TkCRyKlf6hzcjdTD2jda2PpeBKwzZpF/rge3nZFvKHfSIdoXENgpEDh
         dMpznKP0Nw0EffjAUBoPOC01W3wgyBYFlQm6BiD9EP+dKWpebcE/ZCUmlgwCbOXgoelX
         PWeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aRHiyHZz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TLyQdhB22AHTBJzEZW2vPTJobr/MPoVAvAAFzOPLSaA=;
        b=h5zx1/7Qfmz0ewi4Mop76d77h/YxnG0HBalZqFs16cDmqzukA7S6ZGI7C6FR3tiBhN
         MTBX0IgY7/dqkFWfAZK+C/8RJ1/2DsGExLB2lrXoX6JWQbUAgB6vqbjD1f0n5EAiPoBm
         m71xk6yo3DE3N9U7T9GWKcasH1UBsk5n0JXq9M0hsScZacocjWjhKJwbyepnq+2Mldcl
         wIqdfVnvkaIhZh9KJs6bkxcurWfWP0yLV/mNIY6earm9S1yZxfIbT5+/pQnuLkTF7oBH
         AyA8tUGaze0E0c2uwq1RzqtRZCAAeQUaVuKTU/xtx8fuFNtGiaq6mNrGYiw8a3wHLqDL
         +ywA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TLyQdhB22AHTBJzEZW2vPTJobr/MPoVAvAAFzOPLSaA=;
        b=FOmM+XJxE66z0ZdouxVKYy1nNveQz5JtdNzjhtqmn8WodTH6V8MeDa7C+exp+ia33N
         z6DxbmCQ+eckvwijU5ExyNsoNc+UfX2vzQV7SwTLGN7GA2aNsP1r3Xny/DUdot71C1gJ
         aHsVqnA4jRMK4LiQFC4KKbXHjJhTtJRH+uHIhFqara1Aak65d3Xv4VeMMUE1oZ7UcEre
         DSMvZAQIPLQjSZOpZxVhVF/kJv9H0g8p8fHZYR2Tiw7q6J/765cUMXYnMIptBlnM94Dy
         l545TWXC8fW0rM7U0Ae12Ie0mwigF16UIzcCwYqJzNrUU4hv4wa/DwuuIxx946g8NWVn
         ICmw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5315sT5I12alTUO9r+dFLToxGajLYdLA4UmBpRJiozA3oSD2KsTW
	ssJ2qomNzVzzS6l7grMnwyI=
X-Google-Smtp-Source: ABdhPJygj/NedTPiVLEU86IUjHlV0AS0xPtizyMURBHxanjEfeF1KQvOCEfEqCISwwuiHoiNiagPHw==
X-Received: by 2002:a9d:6e9:: with SMTP id 96mr2351597otx.136.1598026840155;
        Fri, 21 Aug 2020 09:20:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:4a97:: with SMTP id i23ls582051otf.7.gmail; Fri, 21 Aug
 2020 09:20:39 -0700 (PDT)
X-Received: by 2002:a9d:6215:: with SMTP id g21mr2529322otj.46.1598026839853;
        Fri, 21 Aug 2020 09:20:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598026839; cv=none;
        d=google.com; s=arc-20160816;
        b=a+s/UrrHosttRpo2sHTHSbcE/h0eXQP+/PbPxw4RqXQ5G5QsguxQELWugT8dU9PsZ7
         uYnnd4HOkF+9BotNX5Jj79+1ZxvJMUSJajBerUZx5loeirjuab51vCHK63N2JFO+fxq4
         iOh/sGxFDV4pZKqIZJ08FIKRT2h7q2iv5c10w1XybEKk2H/wX8BGbaK8ZyKR69dRv4QX
         cR2/Ve4FaH16sqp+sMlXzqt/N8b+tWLLOXWL1kDHbqLugT7gTR2M2Is5xts0QINRS6Y3
         b+JjFxE3KL800gwnhPWblTBhu2OQvmUCbsiBlNxwV3Yo0fr5uW38YBMU0wZiam4JyDos
         h9hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=345LKCHVmWBkYRKXkQ9WO4KJc9K/Rvhx3EQIwR4x9qE=;
        b=jaxi46kdsI+7PzHSZfbF96Yc63abvmgZftAr5RqE57v9hpNCphbGlZMHdFBeMXrxn9
         iQs83UL0C2Hl82Pqg/LTS0tueW7gfIY5FkZaQBqgsbuuIwG7WJyQggUjrRPVDAhgbJsl
         p/gK31uIRr9k227ckYOE5HcPM03y/escbUABrqa8U1vD3kb3uFBM09a/Lhur1Kwtt5c2
         Q9zWffV0zFRghi7z03TRhmeWNrbji0H3icFqcp9PwwdbvPU7CfY0mSro6UlPKs8xPS6+
         oDejK48ZDSc8BPydxzJz8LfhDwwO7jaR2p29kHyKRvhSiWhDEXhzhYvQ9LE0mgYrsE6Z
         iQqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aRHiyHZz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 22si114778oiy.5.2020.08.21.09.20.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 09:20:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2A6FB22DCC;
	Fri, 21 Aug 2020 16:20:38 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jing Xiangfeng <jingxiangfeng@huawei.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 19/22] scsi: iscsi: Do not put host in iscsi_set_flashnode_param()
Date: Fri, 21 Aug 2020 12:20:11 -0400
Message-Id: <20200821162014.349506-19-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821162014.349506-1-sashal@kernel.org>
References: <20200821162014.349506-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=aRHiyHZz;       spf=pass
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
index de10b461ec7ef..4903640316480 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -3192,7 +3192,7 @@ static int iscsi_set_flashnode_param(struct iscsi_transport *transport,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200821162014.349506-19-sashal%40kernel.org.

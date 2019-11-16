Return-Path: <open-iscsi+bncBDTZTRGMXIFBBAVWYDXAKGQEBQ6QGPQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7032EFEE69
	for <lists+open-iscsi@lfdr.de>; Sat, 16 Nov 2019 16:51:31 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id n6sf5752756vke.22
        for <lists+open-iscsi@lfdr.de>; Sat, 16 Nov 2019 07:51:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919490; cv=pass;
        d=google.com; s=arc-20160816;
        b=fzGga6wyu/fIxzrQoyrxNXZdUZYHkD8+RUFfe0lBcNYuGgCnhMEu0X96zuVugkvE0a
         rVqXAhkQKRvBed6ejiMelUn/d4i6m5VQBxiKO4SzmrvhH9fxqf3KnXI6dV8KBj40FAf4
         4fwB3sN/RIknKcZT106JmaIZfVVVldh2XEpwDq6BqyEjROJrCEokFutIb2M5MmFd/kSJ
         /F4YxRMPgK5VCITk5iSrboZLnch+TOtGyv+cZ5GW9AYLfiTfzJXelVV6jWu3dNN8z4G/
         SsX3BcEZE0mKjLEAQs9V6c4iBIn5md3Ro2FRmIP4ColfrRG7juV7b0H4P1rNXAKx9Imh
         72xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=eagBY0kHooIDv9oop8Qh/OJ+P0uCJ14BMQUtlZgTBOk=;
        b=RfE+HG1tPDSoR1A6FbQljNBquKUP6YU/G+poXm6SPYbnRkL4Z+ksTPNb7fgKsOrfOG
         nidmlaLfaVvkONy84ysaAmnlNY3TeunaxwRmPr5ESemtr/MPNxcz6V9EDiw3uT9roIdl
         2Ir+dgEumZFT/It9ZBdlAlOvAgcO7Zl/LLhDswYl5sVrU8Fi2Nkb6n7vOz9zxYEDnWHI
         3Ek+naUuUAAh6CBMgPHycgPSvGqkQM9a0J1auQmcLHUnFISJP9hvpCdI+py+VT4AhdxB
         kvCfz/tRYGPhWS2od0HGTrMVIRSTQeZGV1iVRqlc9pvwXgDMmimYfQoqoPd4yRrwJBOH
         Pt5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fFLp6j65;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eagBY0kHooIDv9oop8Qh/OJ+P0uCJ14BMQUtlZgTBOk=;
        b=S+DIip6ycHGOZL/zJyNNUpAjAiWAA7u8yYIgR9DUV84aAvO5PgG/c28Sikg+kp0xho
         8gRmBxPQAKTyXmTONLMhv6bCIDTAWWJ5DTV2cpUPK/nPIoVv1ny56g8YKzpm7AspL2tn
         /JZAFPYH0OKFX4Wpor1fOfiAo7vUycnAO7JJ3EjiJ1kOtyTyNlPBDwyj5EOxfQoMp0l8
         3OlUzVv5MJM0etfz4ttB77de9TSN+AVFFa7dFxNNszslHeqzR89+SAjTYGXqISbKB98M
         39cdniZekeQk4TmizKyGDwI8H74+1rO9cjXMa9BvYCy4UgwwV/8m6C42X9rqP3aVjtui
         hsxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eagBY0kHooIDv9oop8Qh/OJ+P0uCJ14BMQUtlZgTBOk=;
        b=OEojb5xfWJ1imECGK3g6RPBvPE1JSpjNMyscsLKJb13KzfcdP9WUcb7W17+M+FDfZr
         1EeeAQtVuxKZg2UDqpDZTiH3Opoi04mWhmgr9WIm6CcHiohW7sizaxZBxJfS+TA4tXAm
         byKZyBJbq2F0tlhvEP+P786pFJQcz+BClfGUan1F8jbwWvSt0qIyZTT30j5PXPyFs680
         bf2dyzHUzs00tM+gxKPTq2CZwKjxAWVGOguBIId/6QHMCyqFTzHIHK/lCsPIxRn7QMXO
         CFUbxLWEqQUGWASKYGsAsExHTI2or1TWKCFJRh5LV/6fSbKget4ii6++6hqGlAKSo6N4
         Xnlw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVUkfAxQfXKQaef8eK3WsXhxoNED8DCwn2Sjtae1aH95+Gc9lSV
	ZtJkjFtKdX0F69XDrP5f3OU=
X-Google-Smtp-Source: APXvYqxrzKefpSZhjxGVjoiXiHFJ4z68V/KKKbMk9s9RfA0mbT6PvPlN7zx1kEo2im7cMIfMeRFcbQ==
X-Received: by 2002:a67:fb0a:: with SMTP id d10mr12784084vsr.27.1573919490504;
        Sat, 16 Nov 2019 07:51:30 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:1082:: with SMTP id 124ls893253vsq.8.gmail; Sat, 16 Nov
 2019 07:51:30 -0800 (PST)
X-Received: by 2002:a67:bd05:: with SMTP id y5mr12813225vsq.180.1573919490194;
        Sat, 16 Nov 2019 07:51:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919490; cv=none;
        d=google.com; s=arc-20160816;
        b=SJ0zZmOh/qmN9Jw7ET5EFgXqudBrfusQiyLECl3z094F4ruYzmXLOyQI0Fja3V+px2
         eFr0phBgELxaLj67SNkOAcYoAKl3tFgQaswD6cMFjb1mcL83B7fra/kEgywi4EOizSGc
         Io+2FiGL6shHQSpdcJMQNVwwxpdWNB9HalxLC6ihks19vobjpWOOghujPY1eDVqMXiHq
         qLMTumz/57WSZI8/nPHWrZFnIqmRZO0aAlwmPzlPlWg32SI8Wlg/vO4IhDaYRno6tGIJ
         9JSxuD94CL+6Cs4lpQrprruVj1OTyJUQcAj5w83R290EM4QNylF3rWw/XHU1ztvFVJ4z
         LtXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rCkybPrf2FwDzma2SlZQztjRUTvdo3elsw3WhgT7lvo=;
        b=y7JYAM+YXNsSMfh/sGfHEpmgGugNV0TNJwUXpfyPx0UApNeZoErfiqGVeOF8M4sqLF
         8DCRGpZoTO0fjKfomKxD5Po6nsmk+J6MqWyj9uI7cwROEAelAqPIleLYOIYd8Q1e0LVb
         2bAJpaZ2+bvQYwSwDrxIcJM0+QzMMEvB4Npy0tgFCALrq3wShyKDBPULK5p2yANsyIey
         BNrsmjVSpUc0z5C6TYmQHTGaIInZ3Ih/celnThcAHEM4lrvK2WSVn+BX4KzT2kPIuNT3
         pd5PIPMQxv/OKmPEDkWdrFMKP7A/j0m2+LtcYDikWI/HdqWnd92IBbkDveNUw8KOFMlo
         48Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fFLp6j65;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o206si689622vka.4.2019.11.16.07.51.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:51:30 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A8B8421887;
	Sat, 16 Nov 2019 15:51:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 20/99] scsi: iscsi_tcp: Explicitly cast param in iscsi_sw_tcp_host_get_param
Date: Sat, 16 Nov 2019 10:49:43 -0500
Message-Id: <20191116155103.10971-20-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155103.10971-1-sashal@kernel.org>
References: <20191116155103.10971-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fFLp6j65;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 20054597f169090109fc3f0dfa1a48583f4178a4 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/scsi/iscsi_tcp.c:803:15: warning: implicit conversion from
enumeration type 'enum iscsi_host_param' to different enumeration type
'enum iscsi_param' [-Wenum-conversion]
                                                 &addr, param, buf);
                                                        ^~~~~
1 warning generated.

iscsi_conn_get_addr_param handles ISCSI_HOST_PARAM_IPADDRESS just fine
so add an explicit cast to iscsi_param to make it clear to Clang that
this is expected behavior.

Link: https://github.com/ClangBuiltLinux/linux/issues/153
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/iscsi_tcp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index ace4f1f41b8e0..d60564397be54 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -798,7 +798,8 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 			return rc;
 
 		return iscsi_conn_get_addr_param((struct sockaddr_storage *)
-						 &addr, param, buf);
+						 &addr,
+						 (enum iscsi_param)param, buf);
 	default:
 		return iscsi_host_get_param(shost, param, buf);
 	}
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191116155103.10971-20-sashal%40kernel.org.

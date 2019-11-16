Return-Path: <open-iscsi+bncBDTZTRGMXIFBBMVUYDXAKGQEEYEGNMY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id E27F4FEDEC
	for <lists+open-iscsi@lfdr.de>; Sat, 16 Nov 2019 16:48:03 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id c77sf8582611qkb.8
        for <lists+open-iscsi@lfdr.de>; Sat, 16 Nov 2019 07:48:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919283; cv=pass;
        d=google.com; s=arc-20160816;
        b=gorc3hzj/h0DDTvpAI2SU876Mr3jv5JSKO0IVLCqF1a3L4vdFiYAnHG8q/u+iiPUSZ
         8P1hgRARtXaY1SY81w7JNYYNaLtuRHFxlJoYzxb72u7rbFE+n0ujXHoNcZcZ8dZr8sQs
         JeN6q1tnl7VG0Eb8jYZ96y/SV811k2Gw+GKFJR9q3iREZqc9E6g64ZQdTLHb2IYQtMvo
         JkOAFjWGjHF9khMejeDgbYOhcdC2h/a6dkZ08yBzzOa/dklCEnhI91g1U4Qnk0IdxBCr
         YSGyohqINiukeAiF0TrSbnCYW1GOSUDcnZuLyx4A0x8tyzRmXan2VMvwHP0XTzQKB9Ie
         GFqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=CxWkZnFb4SY6chcXj3RtUWKnzO+aR4bi1MMbJ85cAB0=;
        b=i8CnWat0p++C1mQPsATDMO3Sv8PpC+N3sLZHd0plQzCfSUHdgqjjU0eaVvDaFd7w0t
         3rT3Onh5QpZKcqmAYnZB8UgAxzhpOIHcHvZXf78QzP+Qsee0HY9UWd7dJzjwfVUNWQHk
         u7CRqaZqsPTolthv2TzF+fpnAKVwFMC/eurkZbE70WsDr5cXleIHvSoS6dgNu1DYmB5r
         DXmXMSeif5NadtRQ8zJg6wO0hnTLXfKIP+Bl0+lY2olLPg7QYPHVKY0nzdkMrbYJ/jk9
         HAs1FCprr3eowRlvB8acBvv4N3qs2RBycjNxAGS1cmszGdbrR0RNUBTPTnnLYDXcSQ3N
         wPdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="03/AV6rI";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CxWkZnFb4SY6chcXj3RtUWKnzO+aR4bi1MMbJ85cAB0=;
        b=s8sWjBV9bjwO1mmOVUG70C7ITQzcVgGqGyzD3gM7nS2jc0Ma0owv64BDe3DDOexSyS
         RC2SRqlLOsI5OSuD8e/NUm9j00Av18s41oMX/qFeoKHGNpgiozb58k8hRGQeoLYyXd2K
         KNtkhEm3m29cVEzHik/cfX6GtR9p/LlEtQDkHGJjpd/bpbK8a4z3GHtTdjGNf1VLbO43
         a67c3N1Hp1vK9Axwe+h/f1CjQD8puqoS2CTUP+Y79Oxd0R8asF4bdhfFJ3hVI6p0Ms/3
         yfCApOCew63gP9TeZ2JISKVpUSJMHg421n3vFS7GwyC0I5BiSj9dZa23TuWlSwzc41pu
         0XBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CxWkZnFb4SY6chcXj3RtUWKnzO+aR4bi1MMbJ85cAB0=;
        b=TTwgTcWsMs+m0n1h7vASiuJKj8JRhorNoFUkGeXVyhPOlQiE+rh2jm1xdmPqVPtUKj
         2MKaNZSjSsplqdVv0x9qCyGQg5Ao2ZKeN6ysnRJXlwm3fzstX/9nbjGwyHnmyu/vmPWq
         XbdnflV09dYdBK6n+tj9gVVCmmFrOthm5hinVdbfBehbaWTg0la5hEFH3GhBWxklXBYP
         zWs66ZXc1ezduxsjQlbfmisBfe3iEgLEcmugGbpSRXV+QOqLCckTV0X5CrZZNCr7xlOS
         Bc9PdvbBKOWUw6h7mXqInp0G0yMxs3qicibCUc/1QybFQcoT9nzk5UGwlK9asFTqpihc
         ha2A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWvzE3IPbWFYyhmP2Q0+2609s0lIPQDLQ8PFx0JOQciv7x6WXTR
	zsOnBwHKJRzRuPe2pFcCJB0=
X-Google-Smtp-Source: APXvYqy5NFxDZB/mUXhI2KNloEcaLSsfjCUIyQPrU7Qo8G9jSejae+O66hEMrleyYSYTY/+ExnZ/VA==
X-Received: by 2002:ac8:293b:: with SMTP id y56mr19757586qty.275.1573919282817;
        Sat, 16 Nov 2019 07:48:02 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aed:37a4:: with SMTP id j33ls3337401qtb.14.gmail; Sat, 16
 Nov 2019 07:48:02 -0800 (PST)
X-Received: by 2002:ac8:729a:: with SMTP id v26mr18456049qto.124.1573919282426;
        Sat, 16 Nov 2019 07:48:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919282; cv=none;
        d=google.com; s=arc-20160816;
        b=Ze4xthgMz/jvU8O/jPRYHFMWYM9jJSguEM/NGJAjpget4HW5dtfm1wv2vBFFXA/nyb
         sECV36eKfCaf4Zk4zxi/jJRBLXFnEInhRvN6aVsmCr8d0qOWDU4VTqz8WGd4tZf18nKL
         MjW6RjQ9ONLpaTM6PCVExL93O3HDXoBaZpClIiKY2f9miBAid7oXye9pIbOeZdM6QkYr
         fiU+8K3acLTli8epX6cuNn6nSDC6DOpko8pST6zTsCcd0etqV9SwjEHZxb8x83ZoK5WO
         Mss0uICrD3YqtQsusav/tr2SxlRxk54zVXjrnw3sFSrSnybyDxV/hyeKy7NK+x11T8vT
         LTSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GPJmx9GUiRCDtqvkyeBsa5HIw5FLW95iAh+fz38+178=;
        b=N6YQvbzln+vLPwoTb2k1tEQ5dfU2BqiMfWGzG1Ds2ZyOX95xdIBuqYM9KdWjNZPlKc
         5v2UIpqzKQuZJcTy6wtSTLliFP9shwO9rp//qMHa4z06kn2bnvmtAbpc7zPPkQ55erYE
         9gS3eWI0wee0sVMw010QTOf0TQrfnXs5oMRahk9AMCn8ywA7gWF5sOrrzKdtsAW6Wm+j
         9dG104+UZ5AW/fNq45OKNjphiAhlKDVqrY4xzB4aRh6qBcTSbb3JVlXW1NDK/zegNWLH
         ZrehWzuClf6ZwQ9SrjO1UKsmXLT3rViFWLllZAQV3lpXMGvwlRrZW/EZ80wHKlTHVqiK
         iQNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="03/AV6rI";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z90si572569qtc.3.2019.11.16.07.48.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:48:02 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 14D7D20815;
	Sat, 16 Nov 2019 15:48:01 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 033/150] scsi: iscsi_tcp: Explicitly cast param in iscsi_sw_tcp_host_get_param
Date: Sat, 16 Nov 2019 10:45:31 -0500
Message-Id: <20191116154729.9573-33-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="03/AV6rI";       spf=pass
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
index e11eff6b0e97d..045207b5560eb 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191116154729.9573-33-sashal%40kernel.org.

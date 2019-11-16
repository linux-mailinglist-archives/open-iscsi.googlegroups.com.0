Return-Path: <open-iscsi+bncBDTZTRGMXIFBBFVXYDXAKGQEA4U76QY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FA6FEEBA
	for <lists+open-iscsi@lfdr.de>; Sat, 16 Nov 2019 16:54:00 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id r185sf8908142ywh.3
        for <lists+open-iscsi@lfdr.de>; Sat, 16 Nov 2019 07:53:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919639; cv=pass;
        d=google.com; s=arc-20160816;
        b=ONqkMBQ2QoXH2skCxpb9tGCC+xZH72JaqrUWr31HmH3t1T0gnr84zWGcC3atuatCQh
         ISyLdIjQpmCBoG356kgGmLqekqUMm9fI8sGvySYR4ncAenOIdKWa2+FmA5EEDbT3IW4q
         qMNep/IoVXodtVjYvp1upvuA523M0IHOGlqWQkYN5ZGXHN5Jcfhkr9VAoCP0khSkaq+W
         wvboZR2zmHy1vXoeG23N7e4LhByBmklw/a5SAtoNFNP3E9vtTrj8geKMAUPjsfrvu9yq
         o/Xr9EJ0XgyzVoGYBLf+xRI2CGl5YlEubn/wzVTkGKj8ZKATYGwTiKlRsblz8eimF3wZ
         NeiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=c95eZvZNvY1DEN0kUs7izrmC0QIjlyCleD/QlDdcynw=;
        b=cAIX0qebZVkgKxXu4LC9PPSbDTbj0urJPk0gWeIxK7rqCWBPvJPUXZrvTFgV91o9Tj
         E91CplhXNha4x+iJDMlr7OcQfznn6UWU+O5G3kjr5PqDi95N1ibh+j5r26qWJHygpx6j
         O24NSuZtOkFlMUb/rj8E7xUjQdSqLQSFiVNJEOq3UKLRmslRcQ/L8g9WDoQ0h0rw1qj4
         aM/9plEps2FmS9W7lG67ZFWQ+fRVkr+Q+JzhovMNf93re5q89jKsVh12bQXge0b2vaF/
         lORpkffDrVLw2Z2HR4AlD2bIXVNhn2HfxWiRQapH/rVJdB5XAnD6POXtfNdd41S3YpJU
         yvZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2A2UXtSJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=c95eZvZNvY1DEN0kUs7izrmC0QIjlyCleD/QlDdcynw=;
        b=RT99Ejek4BBYw+NetT6XFdJms2n1/i4CEr6Zbzf5hOb+u8oRt2tYHY8U2M/5MsJEBx
         T1Qh2DqTLNz1gyZkUV215j6NixMxVGgiM3GSbTIdkZlr7N0jQJumAggA/mzPioU22YzY
         WCDpse0KXs4DTQnY2k1C2iGDo9cQnsf88asDd9uyTrT9eSiCp5XKTACbeTiAQB/4MN/i
         /ym3eGysK3AvqyBw6ay78OQI/7eTdSfUyCVH635+qNgmajSmsddHXBNgzv0bkPYApLUf
         ckO306JNMHW+IRlPCVSH+KOCDoqp3x4Z2VnI6u2CzAHAw2pdPWCvW4Q9Cbi5L/7AKiIz
         36NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c95eZvZNvY1DEN0kUs7izrmC0QIjlyCleD/QlDdcynw=;
        b=DoA2r67+u8/6CIElBQa8YuQWdoEaoTWzchbpgy2FAttXX3uGm3l88SKUC8+EbvzLqc
         WWMny5XqfSOjam1hk/vtS3N088MCEPar0FTTOZimrahs+i9qMCq4ONE46NtRoIg2fzuV
         cA8+Myg+Ls++XdLRG9g9yvnk3CkhCAtcj6s8Dk+vVFlCtJrPelbNkVC+jorKqyR/O2dO
         qjUfQhDzwgCOv/ghixRS4ArsM8Qbql9CPeEsbq9nviUtTDm+5F2vkKaQUUN/HJPv5+rG
         2aXVx383UxyxXZulqawGtiVVCywpX0L9J5qyy8coKQNG6Kh2lRlykrTY7Ekpio2rGU3p
         r4eQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUTQVhRG6c2iyHF9v7QsgIm6Nt9DfOPXai+fyJrSqoqfI9Zkos8
	3dW2d4yHY9pN4Fod+90aD3c=
X-Google-Smtp-Source: APXvYqxYXdb6UtHMBNAgLMlu5N4Nv3zlnxYFFJ8CoBF0EA969+RoLYB1fCwfT3L9biZLwFy8xBpeDA==
X-Received: by 2002:a81:c249:: with SMTP id t9mr14331416ywg.9.1573919638976;
        Sat, 16 Nov 2019 07:53:58 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0d:ea09:: with SMTP id t9ls1253269ywe.3.gmail; Sat, 16 Nov
 2019 07:53:58 -0800 (PST)
X-Received: by 2002:a81:1d93:: with SMTP id d141mr13840884ywd.338.1573919638428;
        Sat, 16 Nov 2019 07:53:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919638; cv=none;
        d=google.com; s=arc-20160816;
        b=VfMal+iha6ZCn4P1vNhRG0jJp2OZ+Xaq3I6CAgTgqJrwsKMfAGNJk9wogtYrACdF2X
         ytZyGtzdPXkVyscxTbo3mfZ5B4PNthPJJ4LUIkftxLeHmnoUvVK0n0SqW7v7CG10kSv2
         /N77HtD/dWQ5qA6v8GR+dyjSIhtxHTXbdazOJME8M5iD1OVzQSvpYlZ0BuqwxNIwwQ3A
         Q+0ii8frsChbowlx+8KS9L/ba+zxb7mFAhyEtmJCn+AXNlPf6oTRjd29GCf+wEt6G0MN
         KwuPzKxHlKqW9KnYNAcEOUBAyFLf5kFivHFv7N8fO2RVzuEEXzt8tZOM+1/daC8J92NQ
         +QdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WzlI7XGW+Nhq72ky0q+UeYjm1DvqgF5wxKFTvsGrI1I=;
        b=w1esFuuwAbafx4saJx+EbTFcxH0BCd/VD6/3RvWPk8xjpc9qAvX9XbJSf0x+FMD2Oo
         Pps3zImFc726mPiXgqLsr/EbqyiFlo2Dzc/a4qU+qOcVpz1JcW1UU6N7G+HCl8+YpecC
         iwr1TLUmgfbnzmp7FmayB77qstt32cdw24uXbtSdY2spfmVqq718Pf689DxeRT4CfNWK
         i1SO7AtZCLaF5NQI92uP3/G/jxrOWFt8fQGLdgI8a2oAnNfpFrSX7MFDasNp3b5minC4
         bBhqa4IXSwKlJWuS2jWoX0H4cOZexMFNldG4xJ/phCQaeK8McHdmkfPrjhTn36aS6kTD
         mDkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2A2UXtSJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f11si792789ybk.5.2019.11.16.07.53.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:53:58 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3BCDC21920;
	Sat, 16 Nov 2019 15:53:57 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 18/77] scsi: iscsi_tcp: Explicitly cast param in iscsi_sw_tcp_host_get_param
Date: Sat, 16 Nov 2019 10:52:40 -0500
Message-Id: <20191116155339.11909-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155339.11909-1-sashal@kernel.org>
References: <20191116155339.11909-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2A2UXtSJ;       spf=pass
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
index 0b8af186e7078..fccb8991bd5b7 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -788,7 +788,8 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191116155339.11909-18-sashal%40kernel.org.

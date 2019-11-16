Return-Path: <open-iscsi+bncBDTZTRGMXIFBBUFRYDXAKGQE2HHIVZY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F6AFED18
	for <lists+open-iscsi@lfdr.de>; Sat, 16 Nov 2019 16:42:10 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id p2sf9725133iof.4
        for <lists+open-iscsi@lfdr.de>; Sat, 16 Nov 2019 07:42:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573918929; cv=pass;
        d=google.com; s=arc-20160816;
        b=me2LErSp6Iq+7AgNYTmI6C6TveQ745EQUWTu0gEQVgeywrOG1qZ9H0ToM/9i+jeHfz
         2HXuc5V2TIapmh02dJMCjDEMYwlmpqZZLbj1tG/sEp+dd56tEK+vy72jOZCAdktaoR9V
         NMQJ9NVqJ2f7OA5VePv7C51L5QD5w62ENUCusAiZcxUmEGb3sflP8meqTO35mu9Sfl6S
         5xiWC/rSX1c8pIswam3oqhUIQr8a2ZswKGM1kNwVUj3xftCBTvIpL68jBxpfcEzkTrYj
         H9ZAtxOsvZcqAsQXFgaFZvzUokUW97YBnG9CpN55rj5QrXvTWq+QksdRb6ezx+BqmQ2a
         l4SQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=eGzV0Wx5WepwCcGifmBhcoiFQckYq9EWJLJn6sFpqVY=;
        b=gvW2jS30r+3t8X1BpLvwj3vyXkd5WxKYzXoVEHnE33LbuLLSOv5ODuHzSyUxkSbZo6
         VIfJ6/fpGPSB7lsAKkG18T0eEzJxne2URNH7DtdPPq9Xw/IPFCTD1pC5yt6ooda6KHLK
         nwZjvd8ar/XEAUt8Rc/V2/TBb6p0fTnm5autMEe0LcAHl5Ope30TgLP6W8f1epZQaekl
         HCU0s9owS6kGy+wkWC7jXraGJidZTXffazzTTcFjhwCpKRdtNBBx0OO9UbUF0yzX9ONV
         Ry5TdBw7rBr54UMgh9lMuWgHoOQsTNhU2M6fZkIpVrd/N/YC3fYMeCffPkFJGpfUonoO
         tqcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hX0PBoM8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eGzV0Wx5WepwCcGifmBhcoiFQckYq9EWJLJn6sFpqVY=;
        b=MEf7+OBgYTDC4bITkgtvc4QLxzI/nko8VcZsbArIkOqMJkP0tb8sfYLK3Nh3e5btEh
         8R6NNjFK5ZGqlPlqXrLci4pahBgc3UKnjAsEbLrwkqIwMTlz23aPttZR7R9vNSvkclO/
         TgbDrpC9i7S4+R/eAoIFuyheveYWiYelWlNhZzstamdDC9PrDmvC3M7sNHLI7trwCdp3
         vWJtfrNNT3lBsXXRAUS/PueHVtmvUJ+kfVGAB91yF0xd29c1QTb8qpzYIA8AhrHqwaB/
         lJiyBy5ZIgavwHDpZrxgG0knfMiCPiQ27iFCqjw8SJbo6FMWzl26eKcOYrSEq95fH6+R
         FYpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eGzV0Wx5WepwCcGifmBhcoiFQckYq9EWJLJn6sFpqVY=;
        b=QeTxbqjzRYVnLAzPP84phrl8LPVooZyJQhzu91+Zw4DF4kqw9t9XP9jaBaMHwIk86W
         msHKPNjTBK7v/z8NJalX/Oail57JUer0xwzKnfm5A9L7ylpv5JsBxH0uF+PJDIVzXEQw
         TZF+2CpXaz/5KHo15AZ0qlp++aWTXh/afwcHCLnUhnIo+tWJpKDxXVFobKw+psJI0zwh
         Pqqrv+o1m8Vdaqb7CKsgGmhKWF0Dk3ABC/06Q87mMcx2XXlLJ+joSzAwj8doDV9MQF2T
         JRIhKaq3JAiPzIfShEgu0EMdfsVNOPBikyQJmqa21KOMpNCwA8hZAfCxFjhepT6tgFnd
         4SDg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXZIZ1m8q1qVBmOMfJgnrerx7OABeR83QaahVezJGkNDW/ybhEI
	rsMDc9zGkoeyO7Wnxiwiy3E=
X-Google-Smtp-Source: APXvYqyLydLtWtMLiONyeUlMpAKUwgO/W3CMD5iNAkWbf361EunaSe9GgU/kOq8VQx9IA9wTajo8Zw==
X-Received: by 2002:a5d:91da:: with SMTP id k26mr5760365ior.252.1573918928900;
        Sat, 16 Nov 2019 07:42:08 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5e:c209:: with SMTP id v9ls2034597iop.0.gmail; Sat, 16 Nov
 2019 07:42:08 -0800 (PST)
X-Received: by 2002:a6b:7d0b:: with SMTP id c11mr5924822ioq.236.1573918928373;
        Sat, 16 Nov 2019 07:42:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573918928; cv=none;
        d=google.com; s=arc-20160816;
        b=p2r/+KToSv73zLvvneva1RFU+85p7Uwwa7oA+O5mO1iiO1K9RjDd9mPY4LLVlqVcxS
         KJPeymNtLlYpA0ML880SUc+HoSU4u4DBdELhXnARRMJ0gLt1YPkpxylI1n9k7zTcMPY7
         nvX/Z+kDaoO01PToTYEHaVDG6wDkuxq7CmZ9LIj54baifWWyML90AAuCu3o4iU3jnp0z
         0rQR/lL0h8k1rxZUGNt/ev5C7TV5hEBBa4VAJGBBhyCAEV1oHb1mU8wjZa0S1uIEU+au
         Sa7Df7u6EKX66s7ju0FZOEkC4Q/CuhImth6RX00rOnfIgAOPURxHOLgmj7G5hvfaLuI6
         gRXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WJJ/EwHnVcVaKx3xVTgOe4Z4t3HpLd5HpBVsueCjEsc=;
        b=tknx9EswOEy2jRKqgMUsWHdHQqfinNH1tuKjNR+ZARTUlvE26iqewDDoxoUaW2d1TG
         lo/2y4GlvEf8bGYFskiqyEc+CqoSXGx296gCM0ouoJ8cagd5pzs5U0QwA4VpEqZi/VOM
         tzjIUynz9C9Ev+8E9UWJWLNrdApnX2jB6unRMv2fhl9YeUwDQiuKtugNiyvSyATZZntZ
         x58KA9rqDHCV2ebYO5Bg1/cc3eyW/34hLJwJ2hqDnvgCG9nYa3Mwrz6VIRkL134oDsDk
         tKif8kVHslMZXSQ7TqD2RQcqPSwczTeWRhbeZQQCvvRjqORQkAgC9oJanexl+JODR9H0
         7P8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hX0PBoM8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k11si770704ilg.4.2019.11.16.07.42.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:42:08 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 425A520815;
	Sat, 16 Nov 2019 15:42:07 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 054/237] scsi: iscsi_tcp: Explicitly cast param in iscsi_sw_tcp_host_get_param
Date: Sat, 16 Nov 2019 10:38:09 -0500
Message-Id: <20191116154113.7417-54-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hX0PBoM8;       spf=pass
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
index b025a0b743417..23354f206533b 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -800,7 +800,8 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191116154113.7417-54-sashal%40kernel.org.

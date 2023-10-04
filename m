Return-Path: <open-iscsi+bncBCUJ7YGL3QFBBFG462UAMGQEQ4HNXYA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A37D7B895F
	for <lists+open-iscsi@lfdr.de>; Wed,  4 Oct 2023 20:25:28 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id 41be03b00d2f7-5779937c75dsf42817a12.3
        for <lists+open-iscsi@lfdr.de>; Wed, 04 Oct 2023 11:25:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696443926; cv=pass;
        d=google.com; s=arc-20160816;
        b=P0dQ3u9XH9b7bidoGGEX8RiXH1IIQK2TTt6qSD6uzt/t1DuHi+0bzHXW3yYZ1uK/eq
         k2W1zClImDkwGpG8+I4gNzviLY+ayfmmoymlPxxDuiPYKmGi09K4q7RGMWTZ3bS0TdN+
         vCzhX6pggYPgXv9aONCP12br4MkoUTzq754uiy3HqrVZEPcpOmbJlcQJOF/i+PrSQ4Jl
         tNLQtX//KpW3Ylwl9NCWhoYh7D1dV8xL07h2Kvwqmk09ttvff5TuFAFeeuOJTXqf0Imw
         Jll4IpB/pmZ5W+DDu3i4knxZdxZye5KBPxA10XKAHWj+oKMMwhYxEHZ0xveDkqxP4Jus
         RcKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=CNDx1fzLr/1MLM22Z+/svoaHZXAlKf0GdUK7PQTN27o=;
        fh=bC5Pm5AidGJpV8OaBa10vI/SZxEoZ0aNW+CZAH6oMDA=;
        b=y6O46+Hipbg5kmXsaK1h9UdxVJqtIWNHWydsB6Xsn7zOY8j49JPjCMpc5wKOVWN2BU
         yL9CebP2wn4+MHziNU1hER4KB1QsCZRGTPzC1OU25ixmFnISENFNTf3Nr0KPl/EVTJJT
         Nr3V1OzyCt0kizL6o8hTpmRAM9Xa5AeCsF/NCFKwFr3KpFbmQuYoh7egF5LNLzRk3lpg
         UvEV1QAEpOYep4MWj/FD/nW9CTxPqAZ3TIyfM+q1I3wa469/Gyr2c0Xrm/h/dZ+Zv5aU
         PLNmXvbWhqcGJSf1+aN8N70teXqJmNXpxcYjXoYRFbIGLfZWoAu1fjS1samTykaoLWgY
         ROHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=PzHdzHVl;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1696443926; x=1697048726; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=CNDx1fzLr/1MLM22Z+/svoaHZXAlKf0GdUK7PQTN27o=;
        b=sbVp/PI7JZXpdPTDCIZDenWOuI7oJAkM/SOgYLkP2DFNTJ+FR8hDoGHo6Ih9f5w0LE
         XNhxA/mZGHdLh2PVkWcdVwTcsgMlCt7KEaZIOLFcPnAYbiFdQQwN+ej64OY7XUtmFVhX
         CJl24Xhd4sQDUcnispGzbYuV3063LcFTZ3TudtRMZlvI3reoS00CV9nsenQD2iPdU3EY
         2qjk2lzXQYb0gxFLxiQLeEvzQ/eaA/rWFB04x/twwqdjugr8A1zf/k1dkxwgPlFrdE0z
         qkCAyW8wcXy9smfVcczRYzsUIGqtgAWW/4xC2Bf+1UhUAKVC5ozr6D0tNYG5idaJ9GnD
         mQ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696443926; x=1697048726;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:references:in-reply-to:message-id:date:subject:cc:to
         :from:x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CNDx1fzLr/1MLM22Z+/svoaHZXAlKf0GdUK7PQTN27o=;
        b=NMYULeVdC0SKf4OIMD21L8SiZhxg740e8A/IWLarRceI1AM+B/V0k3PeGVs405H5IV
         6o/dC0Wm/L5SiR2/OarabiKcDalGpI29cGbZFqzgv0X+nLH8BzoxRR6avrjCAXUYLlwd
         KPckP7uEBAqVh3deRK3pAQ0qvLbru3Meq3g6v+q3VYqCZ3PUUGy7odLPrkeOx19NeJgv
         ngs7KkrL0xVvb3tEIAcJ/i2/3YShLkb/4gXlu42Tv9pHJVY5fskvDsAH0TyxQYmqgVug
         Oaa0rxs3agq3Jx/FD/NPohETVreep20JPEPZ5z0ZmBeEAESlEoK3SS7T6+mRuA5La1lG
         r7uQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0YzFICwcKRCXYYnVk8ShY3HjYMVMJ4cjbzLT2KJMvjprZAPXkROa
	4kXLuqdpigVgFFHnmagHS2k=
X-Google-Smtp-Source: AGHT+IFfsO3im+1n43cLH7SBczQV/13TMNOIHzyJ1sxkSNMEcW80igv3sWuYtreusV5ZaWZ3FLdwaQ==
X-Received: by 2002:a05:6a20:948a:b0:15d:7af9:5642 with SMTP id hs10-20020a056a20948a00b0015d7af95642mr2413555pzb.28.1696443926246;
        Wed, 04 Oct 2023 11:25:26 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aa7:99de:0:b0:68f:bb64:bb4a with SMTP id v30-20020aa799de000000b0068fbb64bb4als60930pfi.0.-pod-prod-05-us;
 Wed, 04 Oct 2023 11:25:24 -0700 (PDT)
X-Received: by 2002:a17:90b:88e:b0:269:3771:7342 with SMTP id bj14-20020a17090b088e00b0026937717342mr2692451pjb.18.1696443923906;
        Wed, 04 Oct 2023 11:25:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696443923; cv=none;
        d=google.com; s=arc-20160816;
        b=qqh5J5keDOfj5pMqfVGmgPnVIBq/Ko77E1Nzrisdxty4ZKvTbMaPeMxmAt8iTgXJJA
         +H8wy4gvWSq2gdKSey6cJ0cz0ZxNyYNLSP/161z8iQy4/RzjIUpuxxaLIJ/hIb6YNabV
         YJEMKGFb9+k0yk6IuCdC4eX5bcTVutRcQ6vPskvBl5Rng5KOU+LnPF9a/H3C1cJ1lkzn
         pXoDE6RWZJ9GyWobGD5EpF01Z8DJrHBZ8Jbnm+EmDALCDdj3ybciblvgWSAU/rfNPDNw
         u+7MOLnVJy70/9OZvTDfbrY2yI/MZXMtELk93yND0BGVYs4iM61Q9sW2rHOhu7bxFngc
         9SWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Dk5DAbA9IbiE1AdEASNYsp9hr3yYcLEJlyvZHlfxq3U=;
        fh=bC5Pm5AidGJpV8OaBa10vI/SZxEoZ0aNW+CZAH6oMDA=;
        b=Wlbl6La0dmqfi55rqHK9p6Am5UARxyZRCtQcwXSbNhajO8UGXj4KCaJ6Cr2qHAUT4Z
         KtfU3fMDEsxOEYW3haa5kmszrrffV5h86by4QDJJWQTbNEoVQzBIIFVFgcttxUHsTgxK
         zYEyINF/BLiNR0DfaB1+gTLPYkrqQwo1n3o8QuDzsACS56krWUOeW4N4JsMBeE+2S/8S
         64C40wJAlBJ6v/k861Jg5F9m6espGrX2HBlzULo1WiijPmysjQX2g9kFtQwt47NdfTNF
         /X/RRsSY0hYk9vJaOAmkSsdeKYhxrvtnC9+uwrqMA0ruIWM7cFXVvioq+8pNRb31WdVW
         iWBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=PzHdzHVl;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id gk13-20020a17090b118d00b0026d54cdea99si209994pjb.0.2023.10.04.11.25.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 11:25:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id BAE90CE1E4E;
	Wed,  4 Oct 2023 18:25:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACBE1C433C7;
	Wed,  4 Oct 2023 18:25:18 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	patches@lists.linux.dev,
	Eric Dumazet <edumazet@google.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	"David S. Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 6.5 067/321] scsi: iscsi_tcp: restrict to TCP sockets
Date: Wed,  4 Oct 2023 19:53:32 +0200
Message-ID: <20231004175232.295425568@linuxfoundation.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231004175229.211487444@linuxfoundation.org>
References: <20231004175229.211487444@linuxfoundation.org>
User-Agent: quilt/0.67
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=PzHdzHVl;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

6.5-stable review patch.  If anyone has any objections, please let me know.

------------------

From: Eric Dumazet <edumazet@google.com>

[ Upstream commit f4f82c52a0ead5ab363d207d06f81b967d09ffb8 ]

Nothing prevents iscsi_sw_tcp_conn_bind() to receive file descriptor
pointing to non TCP socket (af_unix for example).

Return -EINVAL if this is attempted, instead of crashing the kernel.

Fixes: 7ba247138907 ("[SCSI] open-iscsi/linux-iscsi-5 Initiator: Initiator code")
Signed-off-by: Eric Dumazet <edumazet@google.com>
Cc: Lee Duncan <lduncan@suse.com>
Cc: Chris Leech <cleech@redhat.com>
Cc: Mike Christie <michael.christie@oracle.com>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: open-iscsi@googlegroups.com
Cc: linux-scsi@vger.kernel.org
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/iscsi_tcp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 9ab8555180a3a..8e14cea15f980 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -724,6 +724,10 @@ iscsi_sw_tcp_conn_bind(struct iscsi_cls_session *cls_session,
 		return -EEXIST;
 	}
 
+	err = -EINVAL;
+	if (!sk_is_tcp(sock->sk))
+		goto free_socket;
+
 	err = iscsi_conn_bind(cls_session, cls_conn, is_leading);
 	if (err)
 		goto free_socket;
-- 
2.40.1



-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20231004175232.295425568%40linuxfoundation.org.

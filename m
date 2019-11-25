Return-Path: <open-iscsi+bncBDA4VMEL3QNRBLMN6DXAKGQEQMM6XEQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E6310922D
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Nov 2019 17:51:58 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id k62sf9254517edc.5
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Nov 2019 08:51:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574700717; cv=pass;
        d=google.com; s=arc-20160816;
        b=rjN+ZwMB5kC6ORC+d181pc+euxRZLyO57idParkReLHgcQwOdkjVdW+E+gFnCUSYg0
         N8B+Llxt7yEGCSQXQvVePpBBSh19sbth2Tgx30/aWGctU+fs1xRJFiTHIG2fr4qqkTZw
         vAlnqA6jYNFZ9olArJjCoYNJshMO95AvKZirtcXm7Big2DfZa6RRNppULMaxE3xMfxyM
         fHYcX3mdelrlUezo1yD9WS9nHRS4dIWXIYX8ZA0O/m13DRkxoqzOLdgfDJvjUxoIkg5A
         t7qpaWguanWROvmYD66Zz1wPx/N8HEIRs0jP3UqEzO5wes039nkb+6YjyDMJWJF18qnQ
         lqiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:subject:cc:to
         :from:sender:dkim-signature;
        bh=DdXT8VUuYxmtPxSAZuWbE4hihZBbLa4PDgbUWdfGkjA=;
        b=uu2bmcxPAHff1EIR6rX6mcA08H36UESXZnEL4Q7DrD1+UMkKuYzDywelDOWWKTNmb5
         NVSHdllgM5JBCtMgpqATqolFahq/nYpoaSSlbH2RoCj0AmSNO8stRGfgJasOftdJazyO
         hYP1l8SN6TQi7INyXm8ZBmul7sgfmcR2H9MVZOYdH+K2hRzEFVZeHt3ST6HeF//9Oy+D
         O2cUgZOxR7FXPiqrkaJ4giVDu69bljjKOvYzkMxnxacYOc0V+Din2qttHHHIkPnQqm4l
         rxKBOVN+uzECmjJ9yEcdiw1fyib7VnwTKi+D6sVNRCGJiFp0iU9iAU21c8zw3S+xY5RT
         iMMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DdXT8VUuYxmtPxSAZuWbE4hihZBbLa4PDgbUWdfGkjA=;
        b=IOfch0C8t6D+8iEgo5p7EJjpCNpXVbKQWDTah7jmM+HZ8pBvJCHFD6HsaVQd6K8E+H
         eQds1d7CXBQN+ro+LCAkbDwA4HoARBpGGccvajMhkdEZ6RQJXvs3dwAQdIzUIMKTcsq2
         iDNDPW9QCnmw5ZKmyXkUj7xlakYlkgV0/aKBL5MgLiTqn6n2/6txd2ojsc5Ns0717Dnm
         TfIKkj9bX0Jznr4d66xhR5nse3CklkgSGBtnlUM+/9cmVXSCRvHeVj8lq51QQX7qa6tO
         TSWejCkIF6mC0ZGrEBH2mIfLNzcTr5gNoYJ1gMntx3PrVnbClx+q9PsLYp/MY1e+xDKM
         /Mig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DdXT8VUuYxmtPxSAZuWbE4hihZBbLa4PDgbUWdfGkjA=;
        b=oGLij25dvpj7/5GJQ7SAoiSLoaDjeMO17l7ywxZ2UJsfWz5UbWmK/fWLfgYQcXfkfK
         oBs8iRmDsD5BDaNFkkdxUI4jw3BUhZF0JabJ7aiEFzhVJk5Yg4TGcPkGxMi/3cL+iU3v
         BMRx1iqb8FlEX/0Yf8lpDD/STNgGudXsN1xwM27nZfUVi/5ZyWPkVYDt6FBtJjjIw3av
         EScycbjRQA/fxe/0rrsuqEMxDtsQ8fo2diDWCAUz+cnSqDXJ0OgYyQmWhomWbAccYhW6
         SebHMoKlur9pjkTXLVqaAbPQWjRYbGB4cdstkp7ua1ymUNs2TPcM9Vev0UeIA0Y+5ZTk
         FHew==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVOwwfpq6g1xf4m18QhlGPVy5fjPsg9kv4A7EZPdCTWVXRFhu28
	hLkZxaokjvc99mWncyO18OE=
X-Google-Smtp-Source: APXvYqwZPZUo57dRzMlNECDHkNKuipjdfuhpe/6YLsy+DDVVwEOvpWX4uHW0RzTi19Z69I4aOblAPg==
X-Received: by 2002:a17:906:7a47:: with SMTP id i7mr37736751ejo.22.1574700717696;
        Mon, 25 Nov 2019 08:51:57 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:edc6:: with SMTP id sb6ls5862124ejb.1.gmail; Mon, 25
 Nov 2019 08:51:57 -0800 (PST)
X-Received: by 2002:a17:906:8591:: with SMTP id v17mr38606835ejx.185.1574700717101;
        Mon, 25 Nov 2019 08:51:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574700717; cv=none;
        d=google.com; s=arc-20160816;
        b=fc4ZpmwTFVnFR1YbWsIkodH2vQPzDw6VMHstRlxof3aGi2+bT6lFu37aflNoA2ixGm
         3Fzpeh8LOhIycjE1HUwcaUJMKjizZZHmScLIATLMu/K4UWTiyjij/UhyVI5FMpuadnhs
         a/l0RCT1JWAo5UvNnxAEhtEC4GB64+yow9qL0kevk9Z0C1pwRYXuw6CyH1hgqYkX2FAb
         u5kBmkSC+W74PvvY3d3Kd26jcklsRqmIsbTg2eV4+IS1zDts4VA4nadp3WXaJf0QNhpn
         ZfaTRSNr5QVedgNUkM3L1sS+ji5XAfha2M+jWsFnUrSST/5MKwPGCg3ISasipRFkdoSK
         109A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:subject:cc:to:from;
        bh=L7kYUMnMNyenyAnr1t5RdrlrwNKWQ9TmCBUL+mvmcOE=;
        b=vpTuUtwfjn/neJTId7CxyaFOpOObSBq/Q2XkPDa5WcYJqpv1OrdSVfn312oYD2Z1yz
         tPGV3YKY8rNaRjhHjXoPGuquphikxBs4pbqSuCPB1JUKKy2PYJmWCIkcAaMfYnuMCSXt
         8hsHygtVfanZoUmBjyGebNoRR9GKo2IyRw67Iqr81kjawig5ed2J+rKCRyvkDYCphHWR
         GbCCEng59M55m+tQoN1VIp7/tj4KBJ1Ycp6pQFrpWcY7Y+EpCULt61W/LDRJoGYhbWDD
         YKpsztgQFzi1UG988j92xTFnYLOeEOVNzE0o0kHSSv0mqZ97+WS4zTeHWXDgFtz6Tbnb
         Ngww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id l37si286199edc.2.2019.11.25.08.51.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Nov 2019 08:51:57 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from localhost (unknown [IPv6:2610:98:8005::47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B3F7328FCBE;
	Mon, 25 Nov 2019 16:51:56 +0000 (GMT)
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: lduncan@suse.com,  cleech@redhat.com,  jejb@linux.ibm.com,  open-iscsi@googlegroups.com,  kernel@collabora.com, linux-scsi@vger.kernel.org
Subject: Re: [PATCH] iscsi: Don't send data to unbinded connection
Organization: Collabora
References: <20191116004735.16860-1-krisman@collabora.com>
	<yq136ekifn0.fsf@oracle.com>
Date: Mon, 25 Nov 2019 11:51:53 -0500
In-Reply-To: <yq136ekifn0.fsf@oracle.com> (Martin K. Petersen's message of
	"Tue, 19 Nov 2019 00:44:51 -0500")
Message-ID: <85h82rvqza.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 46.235.227.227 as
 permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Reply-To: open-iscsi@googlegroups.com
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

"Martin K. Petersen" <martin.petersen@oracle.com> writes:

> Applied to 5.5/scsi-queue. But please make sure to send patch
> submissions to linux-scsi@vger.kernel.org.

Hi Martin,

Thanks for applying them.  My apologies for not CC'ing
linux-scsi, I will be sending more fixes like this to iSCSI and I will
make sure to CC the right list in the future.

Although, looks like the MAINTAINERS file doesn't list linux-scsi as the
target for iscsi patches.  Would you take the fix below to address that?

Thanks,

-- >8 --
From: Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: [PATCH] MAINTAINERS: Add the linux-scsi mailing list to the ISCSI entry


Most people who review iSCSI are following linux-scsi, but some are not
in open-scsi.  Make sure we are routing iSCSI patches to the right list.

There are precedents in the MAINTAINERS file for subsystems pointing to
two mailing lists, so this shouldn't be a problem, but maybe we want to
drop the open-iscsi reference?

Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b3bbb1784913..a0ddc7f4ec1c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8668,6 +8668,7 @@ ISCSI
 M:	Lee Duncan <lduncan@suse.com>
 M:	Chris Leech <cleech@redhat.com>
 L:	open-iscsi@googlegroups.com
+L:	linux-scsi@vger.kernel.org
 W:	www.open-iscsi.com
 S:	Maintained
 F:	drivers/scsi/*iscsi*
-- 
2.24.0


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/85h82rvqza.fsf%40collabora.com.

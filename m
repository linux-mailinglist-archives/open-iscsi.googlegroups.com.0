Return-Path: <open-iscsi+bncBCUJ7YGL3QFBBPNR67YAKGQEACZN24Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 5056713AD06
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Jan 2020 16:05:35 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id x18sf8947014pfo.8
        for <lists+open-iscsi@lfdr.de>; Tue, 14 Jan 2020 07:05:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579014333; cv=pass;
        d=google.com; s=arc-20160816;
        b=hkeOVvpobrl627lb5U3muHmc3r0H5WMjLRBozStUFNG4gZ1e0uo2iW8CZEo97tgYoQ
         nUGN+0dUe2m3u5rn9SEYlf0j1BQB5OGp4xhWUuekxeZkm+XZXK7O9EyNL2wWazfzvYvb
         EpGgbt47vHSthXD9m8kcFOm1n7qgdV2mt0xTSbxcIv9QLt5JeQfsMxuYUMMoN3KGspBr
         WsTxpWh//0rSyFEOb2pCwmzp6I7956iB/omaXEex4/18pyveQ01TxzSHa+pSJTVwO8bw
         L45xBjFsol+NM6YS7UepbIrdETcofXdoxL/dLFt5uKkETXNOQskgnsteFplnhwnxWPTv
         /bGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=XvYcP4pc8eYHgG5m7vOREU9kdC1HJpn8CJL6fftYtLs=;
        b=LEwR+tKFStsmWnJkRMfSI1mcebjWctNPKymGdg3ydV/lbhw8IcO1hxV8DtTmJm34X1
         EPfpSZepnzRfZBLlMPH3tMDAyEFjnkV78KsQpa1TuxVGM7bnpFh6My89gHmpoCniZehC
         FPQ6krh6ZHeIud1fVAGAjLyVH/FDnfAAKitZt0lMyB6B3qERIECFme9g+DIT0W1vI9JR
         SgdwrWCBdKzToC1dZ+pRtxxoXozT3ezMDv9IovKFd5ZBY7aHOS8gwyUHx+JnIuqynrCf
         7vFaCoRKk5kjTaxc4WDVcOQHlF07XpnfR8WJ0KOf9et0id/5V/KaTf6/sytqXqM3twtk
         0nHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HkmdOP22;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=XvYcP4pc8eYHgG5m7vOREU9kdC1HJpn8CJL6fftYtLs=;
        b=hTLfYqZeOqQ3bSPt8F9xuoUz+zSTnilU33QdbcARB6YPQl1WSpeqQkB+VQujwFvxyQ
         VJxRN2izymg/Jb6B2UwZ0JRjrJ6YY+5jHJmN6YrXKbt7i4MkonRbQEv5xdLfZQkN/rNM
         nA3FNAuolvTf3NOriFDjINzr+3V9VekLN/lCq/9DvY3FHvwP+fXhDt0Ch+uZK7r93a3i
         UuJvHiv8mUxLLiGhohYo+vAHQciwCxO+TID1RWnPbH3MRzlc1l0tRlReCY1i2BsuLrDQ
         PszYdDr6skxzbWTFbPY4m/iK/wSll4TBwt5/l5L2QRmLT1s2Hx2vC789P1hGHGTgTwC0
         jUgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XvYcP4pc8eYHgG5m7vOREU9kdC1HJpn8CJL6fftYtLs=;
        b=AwEnE3+wPsMsBtUj5vSAch9Q/w3K2EpEHWp6mbNztiMR3JtnyN2qhQTWPLyI09E8zJ
         pzEiFggDTHuPN/JuhNy/s6J8L8eIYUzSwYZXwrbRYMlwIulUzrhceDl7DYHUZTWWWNwo
         Zsflf7mH0Xcx5tj0JecjemclyajpjsiB9W7eVgxtVcqFAtgGBgTeiUimCnC8X7dkMk1A
         mszILA82lDGh49Jhs2ZbnlCT9TgKvYhrXAb4ZCmLtINPNW2GfECR+PmNWQoHD88NKEOF
         WD+l+I9YPkvfyyANo8TcHTlvqlaH7bL1Q4uTAkhYYUUMMCcq/meYZZvGUIp/nQQBjSgX
         wzoQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVpFuNIsXoCPIBvGUC6QUGxDQl5FYGHaNan2EdWy/HzLNL+3YSo
	hN6uzGn5swr6nSlTQObGkrc=
X-Google-Smtp-Source: APXvYqz5cZ4zcNmTcRLWpx76BKYTa/MujipFORoFvlvYklwTS4tnLyX5JuFirPOPX8eK3hUbwbMBog==
X-Received: by 2002:a63:950c:: with SMTP id p12mr27670773pgd.85.1579014333615;
        Tue, 14 Jan 2020 07:05:33 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:22e3:: with SMTP id s90ls5843239pjc.0.canary-gmail;
 Tue, 14 Jan 2020 07:05:33 -0800 (PST)
X-Received: by 2002:a17:90a:b106:: with SMTP id z6mr29726865pjq.91.1579014333211;
        Tue, 14 Jan 2020 07:05:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579014333; cv=none;
        d=google.com; s=arc-20160816;
        b=yHnr7HwlDodlS/bTXQIa1mYfW2Z4zN56etTG5LfsSXlFumDisRUOLHbEuB/gkhj5/N
         308tO0OWcpRAnUntCnb7PyO6K+613+NAG1SV8DhgvSyOYn6FjbVCbqxASL/FiLLJRHY+
         5BDNotd9OI1yVH2jgSGB33F7Jj9gUHHiiH2YSncL2RnZ91hRPWUYtACEgdvPgCwBS9pc
         MRFXJu0vdtCJHXAwAReW+JhJGu15v49qNUrjAze5bmxRZS/FoY9GoFcNvM0x7ohWHxZe
         kxzUVl2dNp3FVufbKJFVMMFHkwJBS9GhNv/ohtZjAmFmbuaGfnIYPpleOImtav5m6NQl
         1Stg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=E65x8pSr8W78K+nkv+oRyhXIgspfcdDqAN6DLuiHZ3E=;
        b=BYI9TIl+52ps2rHlNaOH5DOFVaIfsni7Wge+NZan+AYMgmts7vQEI6ZxDKf5C38z2o
         Hb/WjCBJ0R/qTzPTPmP1FCWnzMD3JrogwIuwEs74jcNfaJiWCrWWohqN+YfZiVjIM+RI
         NTlT2oPahJAbmZMyrF7CHdGEem09RACgOeeIu7kTlaqahAxh2LaCwVzVvl6g08tn6/Cy
         xJuQDpR7DLBdUx2IGRGNG17dYu7deAUmBb13GkWmTeCbdH5u+k+mX8MVcqgDCaroBiew
         AjfpR4XmCVa1JGbmb9tte0fpSMi2dd4VUgWSQ56AkYudWtiT9+R0n+LiW4FGYv4E+Vcv
         UEww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HkmdOP22;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b192si599666pga.5.2020.01.14.07.05.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jan 2020 07:05:33 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 537E3222C4;
	Tue, 14 Jan 2020 15:05:32 +0000 (UTC)
Date: Tue, 14 Jan 2020 16:05:30 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: rafael@kernel.org, lduncan@suse.com, cleech@redhat.com,
	jejb@linux.ibm.com, martin.petersen@oracle.com,
	open-iscsi@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 1/3] drivers: base: Support atomic version of
 attribute_container_device_trigger
Message-ID: <20200114150530.GA1975425@kroah.com>
References: <20200106185817.640331-1-krisman@collabora.com>
 <20200106185817.640331-2-krisman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200106185817.640331-2-krisman@collabora.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HkmdOP22;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Mon, Jan 06, 2020 at 01:58:15PM -0500, Gabriel Krisman Bertazi wrote:
> attribute_container_device_trigger invokes callbacks that may fail for
> one or more classdev's, for instance, the transport_add_class_device
> callback, called during transport creation, does memory allocation.
> This information, though, is not propagated to upper layers, and any
> driver using the attribute_container_device_trigger API will not know
> whether any, some, or all callbacks succeeded.
> 
> This patch implements a safe version of this dispatcher, to either
> succeed all the callbacks or revert to the original state.
> 
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200114150530.GA1975425%40kroah.com.

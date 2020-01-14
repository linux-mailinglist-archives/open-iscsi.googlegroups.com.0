Return-Path: <open-iscsi+bncBCUJ7YGL3QFBBRNR67YAKGQEM44GFLY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C5913AD07
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Jan 2020 16:05:42 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id u199sf16759858ywc.10
        for <lists+open-iscsi@lfdr.de>; Tue, 14 Jan 2020 07:05:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579014341; cv=pass;
        d=google.com; s=arc-20160816;
        b=oHMC04EtZsWkVjmh2JbgcKdyXarnbDq6+mC9gOVChaQEOEKkdcq5heBKRk9DcucgKO
         uuobB4ZflDKShPVGpK0iw23Gq42olg4b5+zUBihJO9gPtgNx08ZtjLfbPy7xyvrvm9rN
         vtD1VxPJm/tt5d9VfqvABFQGwjjkL3WaBPtag4lMMJmkr6TSWhISszR5WXkW83y7yF8a
         QEQ9Ue3r8EIn8Yc8AFtBb4eKNweZi7P5+g13Yaahb7Y4judqm2KMINo49djSn8GlyOea
         qtD9eGD6/0Al8WI+msljgDVDZ42uBkOM6d8bnqHDQ6BDYtUNrd8unESQR3vcj/geQC41
         D+GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=3SRRNyJi+LpV5DRHxwGfV/l8YARPHf35TwT03INWf+k=;
        b=RaKOt6nMoz+k7vYABWAjCoP7exN19AQkIgWQd4/Bfoo2BN+z7S9csCP9oBe2ega2pi
         n7IE4gyw9rCUptnqWQ7kPTNVeWVieDXA9Oqk88Sw+S+SE8uEO1LIiTeVamosctArHLdm
         40mJ19hUcPPPSpn5UMhHoK7PLUF4KmxlNQcrCctHeryX9hGNFEtzCF6E0d9bWe21MOLN
         Rl+NhBegg9LLep5pxKaOpG+8PzhyV4BB8uWQHna3u17XD/6fFTG7+gL7lAtXLY9b1piT
         ythI8hPTCAMIIHPBky2+d1vTAsNEJEe+U4jaQX/vdxoKGJBsOVOsLszIJJqve7itHyWM
         2WfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=X70UJM6f;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3SRRNyJi+LpV5DRHxwGfV/l8YARPHf35TwT03INWf+k=;
        b=Otxp0HpamBXOVzw71Fqh9bcjhGvZpkrWI0pek9mIAQ0DkFg4fx5ArV6MqS7NZ6Kxzk
         pLi+r2p8+xT8m4AmYt15p55g8C+OGsxIjGckH9+j6QSXPYDj6LWLkVz7zlS5zPVBZTDc
         TGJ15FF75PvD6L3ACn6c3MfKl963y1NfxhgiyWII6sFTIVx4ChzdqKwO4kR+btvyXRrX
         eZHwzxvvtpeQANPya8qhHyi8ZrZMbFRG30KRdQv/aB8GE4xNUZQ426YqkugoPGTEVZ4i
         b+tnVqvfxJ1hpmC31ajxRuq4hefiSMKUTRoIY5Qhv8HgZrVDMarQa7ykSrUw2uk4cPQQ
         KGrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3SRRNyJi+LpV5DRHxwGfV/l8YARPHf35TwT03INWf+k=;
        b=D8U3EWaHPB6cfKsXZzxv+O+IiW/3Q300Y6dlWJgU5vFCAjRO1WLmRGqOUfxnI5AKrz
         E/lP8DWZHr2ipRDVC8oDG43i80nUtgRu+qp92fdkWgNALzkBkf3Icn7EBFi+Gb9FpEPr
         T24hKtR+jLEX/l00LfTJVFg+p+I5daB5kfOrcP6q4ssZ28D6YncL1+0yWNhUlFH+kqps
         0o1pPkAYDMEbtQlRw4wxaBzOQF6Qv07YC7RTdYIKcOAi3/nlfbWLCiA7RsqdryvzTaPG
         SSThXZ5w77736kmW/Jt0r6P44rHl+Sbif4CtCyM38Jitv67W/Th69awmVUDLKuVBpDac
         rUuQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUs83hSG2cnBIXL7G9zH9H9/+T9olU+TbDASKmXXJD3iN8y76np
	M4EnS8U2+zP492sUg1f4Ttc=
X-Google-Smtp-Source: APXvYqxXNkahXLTXZfhUuJlWZwuw6dSchBQz4Jcaf3t87Xn7E5sbgXeL58+0rPmdsnS9MwbKklSerQ==
X-Received: by 2002:a0d:cb8e:: with SMTP id n136mr17454592ywd.453.1579014341619;
        Tue, 14 Jan 2020 07:05:41 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:d994:: with SMTP id q142ls411222ybg.14.gmail; Tue, 14
 Jan 2020 07:05:41 -0800 (PST)
X-Received: by 2002:a25:a06:: with SMTP id 6mr18185035ybk.359.1579014341178;
        Tue, 14 Jan 2020 07:05:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579014341; cv=none;
        d=google.com; s=arc-20160816;
        b=cN/9Vg7C8oSwLgHrYapGuH7nrKHXgwaL7atGgznfEXar2k/IYybZ5hSCzFn9DbXk9w
         Hp4HOvhkO42A6/5InKb2C+wbh+iS/cTT/cJpZpC1T7uBLuZPR4UoszEqZyGKM2tupiQu
         uIrGhjudFZ4cWw7eYkQXloCh6WLQ1UE8STJ3EfC04b42a6jN95b/YnMBj/fA/Rwn9q4M
         R4pnhonrOw8SAwIZydsBjs9YfkD5WEHdSwHlEmnys9kNXZRrhMiXqZC5WhbZsUcI37vH
         QYMQP+DgMQqT+nPSi31zk0o5uc5QATHEUxA+2keDrjYm8G3n/rwKjCULT25x+ErHwj+s
         Aamg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=h3PbUbYbBwqV+zHzkhJSdTpDQCMxcfVn1HMz97JqOCc=;
        b=i/7Q4xqlmkpppq6YFH1x7HoW0HylwXKQSP7EGK4VGV6uUlmivL5LVxXhUCOC8fPP/Z
         x7rWbhAOLDCdIpfUN7qs6VO83GB48yAH6bXxo7yX866Tzm5qQLL6qryXEvqDTiuVqraB
         CXWMy8sdiaPC1kpM6uB8ow73+nGCp7dLPWBPGWGTA7ZCNPDpzL+o8VobvWgNngHHiOIV
         N9IZk+j+G34TVXopFHbZC5Xvja3zc8nsMO672BDQh2PJeVZW5mMkb9CqnMfWuA2cTjza
         spml0azgsINupI6UTaOzlzclyF7CWFM2LZn8dK65aF1woYNElkxjICAouw6jVR8XlD+j
         INBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=X70UJM6f;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v72si533273ybe.1.2020.01.14.07.05.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jan 2020 07:05:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AF6982467D;
	Tue, 14 Jan 2020 15:05:39 +0000 (UTC)
Date: Tue, 14 Jan 2020 16:05:37 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: rafael@kernel.org, lduncan@suse.com, cleech@redhat.com,
	jejb@linux.ibm.com, martin.petersen@oracle.com,
	open-iscsi@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 2/3] drivers: base: Propagate errors through the
 transport component
Message-ID: <20200114150537.GB1975425@kroah.com>
References: <20200106185817.640331-1-krisman@collabora.com>
 <20200106185817.640331-3-krisman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200106185817.640331-3-krisman@collabora.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=X70UJM6f;       spf=pass
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

On Mon, Jan 06, 2020 at 01:58:16PM -0500, Gabriel Krisman Bertazi wrote:
> The transport registration may fail.  Make sure the errors are
> propagated to the callers.
> 
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200114150537.GB1975425%40kroah.com.

Return-Path: <open-iscsi+bncBDUNBGN3R4KRBBVCTCOAMGQEWDZCXPQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5AE63C1A2
	for <lists+open-iscsi@lfdr.de>; Tue, 29 Nov 2022 15:02:49 +0100 (CET)
Received: by mail-ej1-x638.google.com with SMTP id oz34-20020a1709077da200b007adc8d68e90sf6491368ejc.11
        for <lists+open-iscsi@lfdr.de>; Tue, 29 Nov 2022 06:02:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669730569; cv=pass;
        d=google.com; s=arc-20160816;
        b=aj8OKBPbnsEDtFKbSuxBPVTGK/hsTUVzWypp1V+C9SAmtcXgrdDecTBX1CYWhsqD1J
         83KdRxJ/nHjmedj2Wl2sVgrR1VkLkf/GDuEhKZB8JnEBsEJX5IJCXMxF3N8los9plqBR
         jyP6Gi4MK9chFTZp5b4MPqiSBVVmx0fNevWvU+ORgWI8dpo4CL0fdS6siG3dw1GRolvL
         N38wTGqAcDjf0OEUi8W1Nwf7IqYgG/iFD0eiOnwhIERz0oGtdufFcC4+9hwGzW/1OK+w
         0gUwUd6Vis9VXZXDOHtUDYDEhDV/oTYTRk0wkMmaXY8dV81iKYwBGhS6O6suywcVY8po
         9p9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=a+XHOfVwUgGi500R3pII1qFrJE5yTQQu8Nvt+qjVvXs=;
        b=dFahB33Ir1Yce+Ym+psxQoGdluuk1DUXTOBras9AocecettWVeX8295k4YKGdkMS9T
         1QIWhKGbowKIYDUCyFtJImknZ8+lyP0180lPRWrB1hWPoz9Qz1tLLurEnR7PwqNVFqL0
         XKSkgDFlLoYsIGujqHG3ZAHiYYUOBsSmwPF6+7mat71f2WjflT5M9FmJojoeD5MkOTG+
         61BueI9lD+W/KmM7wYJ8vDZrP90212O78Up1vYMkU1K4eqLuoDtdxtpdPCocUZXfNWk6
         inkBeF425yT4e+fcF31Hoipq+edjzhC75iyjXFkPKY6T9dAVu3c3rTM5V3P6WvOcLMT+
         D7OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=none (google.com: lst.de does not designate permitted sender hosts) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a+XHOfVwUgGi500R3pII1qFrJE5yTQQu8Nvt+qjVvXs=;
        b=ruEq5XcmnQyfCo7mJNV8017YJ0hsnQ4V7FxF5i02D5gbgrv/duh+rnH5Mhno4Rglpe
         E7JPAAl4vQ92nAaEQgZ2bNiK2x4ibGdE/cwwI2VlUhhLjNxTHviwhtg0pdxJsicx+RHg
         17i4Ec/Yo5xDZymCXs8iWKtd8tZstlaTPVomiaYLfibsLq8aJ4vhCwnUMk5+N27nAhfg
         HUY7CFwunsBemwHwuK2H0pjNUqTZ3XfMz1SnEDWC6Z9f+xRI+xI8YJ2nZmVsl4hzkmD2
         7pwlfNeRSDlIEUPHlF9QxAfkZw0cwB/X01JVC+JgXTFI5+0aQHuBEzEGOqeYsiIUYn+b
         bx2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a+XHOfVwUgGi500R3pII1qFrJE5yTQQu8Nvt+qjVvXs=;
        b=zX2+sSrQOZWmbsozzRNwlwx2Af+beYad95XLsdQ1FU1Tuww70Ypza2YuSkANWfC8Al
         u/6pMAGEEvR7dwMUUZOZzDQQwP7AHbyRqcorlGJXk/zS8AEzQKR0gW16pex0Vek+NZxc
         4uxVbWfQkT5mTBLXu2DpXgTUyjEjap6zyETBvBzl5VLDfK5BUOpvAc2R+sidpAh1H06b
         lnFOoMS4c9hoizw9SQgIKk/hAdqiwdsf/bc6w9mMwKhtLlJTq1jsOgaGHXUaVuGXAll0
         ylUqYwQ0xsaom4Akmu7SrBg3J8FJf0xH/1rpqMIOqneDHW/bEXi4Wi+hdz12+Ga31tgd
         9PSw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnS+GAMst21YZw7b/I9ERdKnjEqMFKvGSZAYZrKBuQ433ktIuyb
	Cmw9bNm+AJ6Px6QNBOpnu2U=
X-Google-Smtp-Source: AA0mqf655I1uarPgvNp92vpKMbS44J/qMsA7fOqqKG34uF4fjcoQ24sAvbDHxVUN90h3RQN/OyunHA==
X-Received: by 2002:a05:6402:380b:b0:462:7b99:d3b2 with SMTP id es11-20020a056402380b00b004627b99d3b2mr22079446edb.248.1669730569332;
        Tue, 29 Nov 2022 06:02:49 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:4496:b0:7ad:9efd:4692 with SMTP id
 y22-20020a170906449600b007ad9efd4692ls6977734ejo.4.-pod-prod-gmail; Tue, 29
 Nov 2022 06:02:45 -0800 (PST)
X-Received: by 2002:a17:906:c1d0:b0:7b4:64d3:e6f4 with SMTP id bw16-20020a170906c1d000b007b464d3e6f4mr428738ejb.594.1669730565796;
        Tue, 29 Nov 2022 06:02:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669730565; cv=none;
        d=google.com; s=arc-20160816;
        b=ebhNP3kFgOXjHsiHU2qRRBu7SB3l3OiNq1nyCgP0KiAye48fc8OSPEw31K9kW3F3Tg
         j9tlFiLciazDf/WkJg1MkyJy+cNSmqP9DiWn9h5vTPySxPV3yAsosKAJlWMg+n4a48mP
         py4tR/a4n7es5RrlVEIlYeMI57IEYlBJB7iGztwhTbZGFjnvr9Xt4Fu0B/FGbiFMBLpk
         yLyRfFZuWlYz+NjBa2kO/ve4v9rKFEmmniWD+vrtvHCpLSfZuGdYZeCLwWGU3w1C/UrM
         2XzqTcpbHRVP+Dc+KdjKCsCMdv/LydG9FjMRS8GtomEGZw7f5Oc7PqobqDlGN2glmHIg
         VkzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=dxMrIRuI8XL9/2L/5QCWGQzHb14K/VQG03dRspTYCG8=;
        b=wYD2g0FsWInNaE95YiavbwjKg79mR6aW+hD0Avw7pt11uDoae8bWqLNeiEnnpkWT2k
         9bqf8js5AJv4bmFMsvXBVozPx+g1Wm1Z0UBBd8O0ZjJmN0ZWNWAWrynCPdeAXaerViEO
         Itu+yFXhFjtM5VFKC0EC+85ZwPX0si18vbrZuLd3UbeILA88ZQHyCKOL/DdA/qkbq8tD
         fE4Kn+z31rZfXEU6kpcZZ6NYmMXHDE+6IvfALaksY57RH7j/nmFvTMG8o8uhUAlm5GvB
         x8bwJDThqfo674FhV6HbJoAAN+o7a49NDF4GgnIaUE5CCLtUg+FKqpKNlvT5gCNPeSjW
         zIqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=none (google.com: lst.de does not designate permitted sender hosts) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id b14-20020a05640202ce00b0046920d68fe2si581941edx.4.2022.11.29.06.02.45
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Nov 2022 06:02:45 -0800 (PST)
Received-SPF: none (google.com: lst.de does not designate permitted sender hosts) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 7710168BEB; Tue, 29 Nov 2022 15:02:42 +0100 (CET)
Date: Tue, 29 Nov 2022 15:02:42 +0100
From: Christoph Hellwig <hch@lst.de>
To: Benjamin Coddington <bcodding@redhat.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	Philipp Reisner <philipp.reisner@linbit.com>,
	Lars Ellenberg <lars.ellenberg@linbit.com>,
	Christoph =?iso-8859-1?Q?B=F6hmwalder?= <christoph.boehmwalder@linbit.com>,
	Jens Axboe <axboe@kernel.dk>, Josef Bacik <josef@toxicpanda.com>,
	Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
	Sagi Grimberg <sagi@grimberg.me>, Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Valentina Manea <valentina.manea.m@gmail.com>,
	Shuah Khan <shuah@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Howells <dhowells@redhat.com>,
	Marc Dionne <marc.dionne@auristor.com>,
	Steve French <sfrench@samba.org>,
	Christine Caulfield <ccaulfie@redhat.com>,
	David Teigland <teigland@redhat.com>, Mark Fasheh <mark@fasheh.com>,
	Joel Becker <jlbec@evilplan.org>,
	Joseph Qi <joseph.qi@linux.alibaba.com>,
	Eric Van Hensbergen <ericvh@gmail.com>,
	Latchesar Ionkov <lucho@ionkov.net>,
	Dominique Martinet <asmadeus@codewreck.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
	Trond Myklebust <trond.myklebust@hammerspace.com>,
	Anna Schumaker <anna@kernel.org>,
	Chuck Lever <chuck.lever@oracle.com>,
	Jeff Layton <jlayton@kernel.org>, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, nbd@other.debian.org,
	linux-nvme@lists.infradead.org, open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org,
	samba-technical@lists.samba.org, cluster-devel@redhat.com,
	ocfs2-devel@oss.oracle.com, v9fs-developer@lists.sourceforge.net,
	ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org
Subject: Re: [PATCH v1 2/3] Treewide: Stop corrupting socket's task_frag
Message-ID: <20221129140242.GA15747@lst.de>
References: <cover.1669036433.git.bcodding@redhat.com> <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=none
 (google.com: lst.de does not designate permitted sender hosts) smtp.mailfrom=hch@lst.de
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

Hmm.  Having to set a flag to not accidentally corrupt per-task
state seems a bit fragile.  Wouldn't it make sense to find a way to opt
into the feature only for sockets created from the syscall layer?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221129140242.GA15747%40lst.de.

Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBKGDZX5QKGQEIMLSP3I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFBA27D3B1
	for <lists+open-iscsi@lfdr.de>; Tue, 29 Sep 2020 18:32:42 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id j6sf3919991pjy.8
        for <lists+open-iscsi@lfdr.de>; Tue, 29 Sep 2020 09:32:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601397161; cv=pass;
        d=google.com; s=arc-20160816;
        b=AGBQV1vraWJJYHQTsLU3IqlJ9NCQY5tNiHmjoC5vvYgYJ6Yz/pNTiTgahMjE+zS8QL
         sjJFRjeeGhvV7SNK1rft+SyFsZ260I7LOusfW40aXtJuVI+b6dERVqvmOAZ7Js6HdkMF
         8tIuBHD7oonHpinZnk445qiJ4qAhqO0LHpECPT0kOXNSxaioYT+5LzSyNYkp3mndv7mM
         YCf1DfWfhi7oJ/mcyo5g8pE0B5emgBAC/XXEXzlCOj+X5sgBUe49PDm/e8PV35NHtZq4
         diI1DnsPENnH79JzDooYdNiDqptvdxp4p54xYfOGIutbuU9JeuWQkw4TdhMZErlajJmM
         J/sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=kSeZ1XrPQLOJuokz2h/ayU1VU9AKxn4D/bPFjkMvU9k=;
        b=WDm6Sfcvpl9yNhXdpiThJpVyi7aq92q1gQrdqjkM8XXHqnDqvxaUD+xRTf48K1vy0x
         ZHvgGd4/JIoXoF9yTk/x0a/MyjJAJnZ8IFbBaym/dHt3E2Cv9TtE0C1lw1z9q4gINJHq
         39Ox7uIHkbZw3wmRbdh6aXyOAC1D8e2xUcySWIpSgDXZEupdlrFcuZMT8ItL3SsOrYc1
         apmVFL1+CpXWDNfWht/BBNaPlc8K/qqfKSlibkmdaz1rbNODYWnL/frxdf6VjE5gpilM
         Hm1hcoSyGlgF/IubNgWLjZqcvGp5wgR21gqKT8Pul3+7qohwPntkrGxuR3jdapxlnddx
         wJrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=wHQmOCuc;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kSeZ1XrPQLOJuokz2h/ayU1VU9AKxn4D/bPFjkMvU9k=;
        b=kF5u2teonRUr8t9IMHR/cdWiwTarTp1Iz4vngds2Dvf/rXbMuJqIfYh5uxFWkqMvmv
         9Na540SfyPaJjDPNji2KH5IYWJl7ZBpZI08mpiekZjsgGu3YvewWhPUTwFCXmjfPyVgX
         D6RXJey7cXBy8R9b7cCdwnDiR5yE6Sm6jmEDTgZmT6EzDN95f0UUYrvOJEIRqa/30Ehu
         RqcDjCM/irMG8nlyB4oQZSe8r55JFlwUbvCR7BwofzXRUS0ZZg4Pvc5rgYzPxusBTp66
         /9+wEsgZ61oNVITKi+oFtAQsafag3KoPQGsFfrSOxpjQXtDsl+81cpS3jaiBrCA3zv3j
         T6fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kSeZ1XrPQLOJuokz2h/ayU1VU9AKxn4D/bPFjkMvU9k=;
        b=BMsgrPOzYCvDjy5pblawgV/czHun/c2SZdwLP2Af5GjNo8ImNSCpm31tax6B0y5m1t
         4CGAu90GkZv6DsZ6O/Z0RKZ8M+5AjOSXjaKD5xaY/NeIoymSki+hR+QC9hDQzNFXP/V3
         y/8uuGBmdZpWiYtuPgleHelDJGARF/wTqp3Ch6Cqh1s2HI2FXv5qi9Fcjd32QM8O5Y89
         yBEQEqamlpklfjvt8Jb3swjG2VHccgukro5bznwAuik2OwusodYK1hQcEdJqot7e6O+J
         QkVDkL0EWueCCMHg/sGV7K3IUxIJZmHRx7Wh7L7QLRgFRcoI9xVBK4VRwOXZ1UDktf/+
         os9Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532UbDq0jgrTu/AmQ0kNGZKbTFQPSpt1DGiU+PvybH0kS92Fms2j
	OIbzm3sT8xql7iY6NfGxz0g=
X-Google-Smtp-Source: ABdhPJxRN87yQIw2TuZhhJCghOI9oCpk/xVR+ndRSt6mAcWikFgevF5oGjZITDye+jcHZ3+PTijoVA==
X-Received: by 2002:a17:90a:a591:: with SMTP id b17mr4710111pjq.159.1601397160959;
        Tue, 29 Sep 2020 09:32:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:562:: with SMTP id 89ls5314451plf.4.gmail; Tue, 29
 Sep 2020 09:32:40 -0700 (PDT)
X-Received: by 2002:a17:902:be0f:b029:d2:83e9:5d6b with SMTP id r15-20020a170902be0fb02900d283e95d6bmr5599620pls.75.1601397160295;
        Tue, 29 Sep 2020 09:32:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601397160; cv=none;
        d=google.com; s=arc-20160816;
        b=uLEvFK7y4+lM7bGUtQlXy7/8k6MDqONGZZjmy0Xs7eewqgdC2gmmdIbNWl/U+mKLTt
         +I9m7p0NS0Dj7bMyi8dBulMMbp1BnP8KPEoLjcmR7n3DFi8ghq271/GLR3U1FxYg0iJ0
         /kdnM+HIs4sfoLieqnGM//zFlrokrI1X/Vhj3EoFHoWMmKlnF82MA0KO9OFfusCbL3NN
         k4uoy70kJM20SlVQh+zryzL/+hozMr8NMRRM3njafkkakWpF/XH8xWOyUjHbevSpdkH0
         ue2jFjYGp0/aTdYBUqyxCDDoSrudZ8pLvN8SY7MM+pw1eA8qfhXO7PNzUWQ4xJKgPeif
         Gq1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=tzQi1UXipO6sFuqec9C7WzivylNzYOZjztTncXkQNhc=;
        b=HLVcf7kGnRsiSTNwpVGezK9tBKwAZCs4Cb7OXOQIFW+06Gxva1Nt2o9GCmZmIRs/Uo
         J4qFyyF7FAs8IAa7BBG4q7JVJeyYZ3BCKEqnVU58yy6j8k3Ff6tfDuq7Siq6TTWsej8U
         g5W5nGXfRj7lEORaU91NSYBzW5imUpllIXVlxdv1sighYmpWDJyKD8FM4qVfsxB3ssh2
         G7y5htIxBKVzIRYqTMmEfHIMHHaXzX/IGIBOxz1IRUz3q1eX/SSa+UIcIukcQixdOGkY
         bQ+xF83a/KR7h+SFYmQs56UOgUSwV1hBRwWAgOQy5zb9zg5g1lRBENA7EefKg7WHnJ5/
         vaNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=wHQmOCuc;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id t15si601720pjq.1.2020.09.29.09.32.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2020 09:32:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08TGP4m8060382;
	Tue, 29 Sep 2020 16:32:37 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 33sx9n3vty-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 29 Sep 2020 16:32:37 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08TGOqfp027429;
	Tue, 29 Sep 2020 16:32:36 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3030.oracle.com with ESMTP id 33uv2e51yy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 29 Sep 2020 16:32:36 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08TGWZcH005602;
	Tue, 29 Sep 2020 16:32:35 GMT
Received: from [20.15.0.202] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 29 Sep 2020 09:32:35 -0700
Subject: Re: [PATCH] iscsi: iscsi_tcp: Avoid holding spinlock while calling
 getpeername
To: Mark Mielke <mark.mielke@gmail.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        Marc Dionne <marc.c.dionne@gmail.com>, stable@vger.kernel.org
References: <20200928043329.606781-1-mark.mielke@gmail.com>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <aec41066-f5d3-c426-11c1-25e9b0a9ed44@oracle.com>
Date: Tue, 29 Sep 2020 11:32:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200928043329.606781-1-mark.mielke@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9759 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0 adultscore=0
 suspectscore=0 malwarescore=0 bulkscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009290140
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9759 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 phishscore=0 mlxscore=0 lowpriorityscore=0 adultscore=0 clxscore=1011
 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009290140
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=wHQmOCuc;
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 9/27/20 11:33 PM, Mark Mielke wrote:
> Kernel may fail to boot or devices may fail to come up when
> initializing iscsi_tcp devices starting with Linux 5.8.
> 
> Marc Dionne identified the cause in RHBZ#1877345.
> 
> Commit a79af8a64d39 ("[SCSI] iscsi_tcp: use iscsi_conn_get_addr_param
> libiscsi function") introduced getpeername() within the session spinlock.
> 
> Commit 1b66d253610c ("bpf: Add get{peer, sock}name attach types for
> sock_addr") introduced BPF_CGROUP_RUN_SA_PROG_LOCK() within getpeername,
> which acquires a mutex and when used from iscsi_tcp devices can now lead
> to "BUG: scheduling while atomic:" and subsequent damage.
> 
> This commit ensures that the spinlock is released before calling
> getpeername() or getsockname(). sock_hold() and sock_put() are
> used to ensure that the socket reference is preserved until after
> the getpeername() or getsockname() complete.
> 
> Reported-by: Marc Dionne <marc.c.dionne@gmail.com>
> Link: https://urldefense.com/v3/__https://bugzilla.redhat.com/show_bug.cgi?id=1877345__;!!GqivPVa7Brio!IykqCqCEtE_EyrhXerYzj_cIlmkenkaAVddyoEOw9T6n4nExSaGFHkn0ZQrLBVSUtxQ_$ 
> Link: https://urldefense.com/v3/__https://lkml.org/lkml/2020/7/28/1085__;!!GqivPVa7Brio!IykqCqCEtE_EyrhXerYzj_cIlmkenkaAVddyoEOw9T6n4nExSaGFHkn0ZQrLBRT9NL69$ 
> Link: https://urldefense.com/v3/__https://lkml.org/lkml/2020/8/31/459__;!!GqivPVa7Brio!IykqCqCEtE_EyrhXerYzj_cIlmkenkaAVddyoEOw9T6n4nExSaGFHkn0ZQrLBfxZYLKs$ 
> Fixes: a79af8a64d39 ("[SCSI] iscsi_tcp: use iscsi_conn_get_addr_param libiscsi function")
> Fixes: 1b66d253610c ("bpf: Add get{peer, sock}name attach types for sock_addr")
> Signed-off-by: Mark Mielke <mark.mielke@gmail.com>
> Cc: stable@vger.kernel.org
> ---
>  drivers/scsi/iscsi_tcp.c | 22 +++++++++++++++-------
>  1 file changed, 15 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index b5dd1caae5e9..d10efb66cf19 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -736,6 +736,7 @@ static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
>  	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
>  	struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
>  	struct sockaddr_in6 addr;
> +	struct socket *sock;
>  	int rc;
>  
>  	switch(param) {
> @@ -747,13 +748,17 @@ static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
>  			spin_unlock_bh(&conn->session->frwd_lock);
>  			return -ENOTCONN;
>  		}
> +		sock = tcp_sw_conn->sock;
> +		sock_hold(sock->sk);
> +		spin_unlock_bh(&conn->session->frwd_lock);
> +
>  		if (param == ISCSI_PARAM_LOCAL_PORT)
> -			rc = kernel_getsockname(tcp_sw_conn->sock,
> +			rc = kernel_getsockname(sock,
>  						(struct sockaddr *)&addr);
>  		else
> -			rc = kernel_getpeername(tcp_sw_conn->sock,
> +			rc = kernel_getpeername(sock,
>  						(struct sockaddr *)&addr);
> -		spin_unlock_bh(&conn->session->frwd_lock);
> +		sock_put(sock->sk);
>  		if (rc < 0)
>  			return rc;
>  
> @@ -775,6 +780,7 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
>  	struct iscsi_tcp_conn *tcp_conn;
>  	struct iscsi_sw_tcp_conn *tcp_sw_conn;
>  	struct sockaddr_in6 addr;
> +	struct socket *sock;
>  	int rc;
>  
>  	switch (param) {
> @@ -789,16 +795,18 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
>  			return -ENOTCONN;
>  		}
>  		tcp_conn = conn->dd_data;
> -
>  		tcp_sw_conn = tcp_conn->dd_data;
> -		if (!tcp_sw_conn->sock) {
> +		sock = tcp_sw_conn->sock;
> +		if (!sock) {
>  			spin_unlock_bh(&session->frwd_lock);
>  			return -ENOTCONN;
>  		}
> +		sock_hold(sock->sk);
> +		spin_unlock_bh(&session->frwd_lock);
>  
> -		rc = kernel_getsockname(tcp_sw_conn->sock,
> +		rc = kernel_getsockname(sock,
>  					(struct sockaddr *)&addr);
> -		spin_unlock_bh(&session->frwd_lock);
> +		sock_put(sock->sk);
>  		if (rc < 0)
>  			return rc;
>  
> 

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/aec41066-f5d3-c426-11c1-25e9b0a9ed44%40oracle.com.

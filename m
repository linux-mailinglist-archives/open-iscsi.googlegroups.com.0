Return-Path: <open-iscsi+bncBCHZVHVFVMARBMEK2SQQMGQE4KF4FJY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5BA6DD38A
	for <lists+open-iscsi@lfdr.de>; Tue, 11 Apr 2023 08:58:58 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id j14-20020a05600c1c0e00b003f066d2638asf4792409wms.8
        for <lists+open-iscsi@lfdr.de>; Mon, 10 Apr 2023 23:58:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681196337; cv=pass;
        d=google.com; s=arc-20160816;
        b=lybyghnWCzLnHtyXRD1nBQeLPZT301f4xeQLBFGliKgyKGok6wtvm6BMaBbwipYuJ5
         +WYsLrGGaDJFtIeCncQqN662a0iQaJsMYYwvycclUDzVoDGZhPc94qmHHIjWrxv1xh5o
         d+lVQrlqDgFx6ZAcEZEXE/vTksO+ITu+7D0A6OnmLHL84H3UsBy+iFxrKQj1QYjfN3px
         5Zrx9umPwgYvXiteZBwqd5h5OynPJhN9K6ZWoDS0iIskFvqrgUhnqfiqDzGe2Lx2BzVr
         RvJRyJtG/5dcd8EMEPJ8lbTqXnU0tUcK/u1KW5rFBbUF2UeFCJSFwXrj7G+lSxZzmGVl
         aE6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:dkim-signature;
        bh=MkPWy8i3gIpsLoeWwDAlEsZ0w4K2xPzFMQ2JOpCk6A4=;
        b=bIRUQjwvPa0ZIY8QL4uSNwcu5WeAaHJJPh6KX3bHMlALLVvBgAWiMrZF4trCu/6Got
         wfF4ycIKIVsN4ePv/3DGMYcLEJqdYGBxNUFdKTFbVnOjaHcEWsUh6cwhCWCR3JZcAkao
         ixA7gYuOhe5FOwhOcO5jY7q2+eDmMH/q/9yBREO/yT7LpggQdgd3yAxJUDlZhxJlQhcA
         sHDXXXuOHGRMm8QL4aaFmaIZGZyoRYqFLXqZqQP6fDqDDn3+dCfTmlhnOj3AGco5uCLH
         Vyl+j5QS/8fI1dYlWR81qZZ2K5yOOrFoZYjOfKvyuF/L34B1y1VIGRQSypSvHb5z0bID
         oMTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=jPw3SUMb;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=5qCCkeKW;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681196337;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=MkPWy8i3gIpsLoeWwDAlEsZ0w4K2xPzFMQ2JOpCk6A4=;
        b=G/z7mOADSDQGWumWYLtT6LBICN8GRl/NBnbC/DCvy2zqy4jVxZyV0gv4KejamhYP/9
         oezXagBo++1csJoe0zrstgxz5y+Sg06JLIdS8fGl1bFvJePAzV/y7A9jPPNcPzoRwq2o
         qvpw9AEP+SHzVpY69ekIFKsehRurANnwoa2qgVHo+4FZaQNK7YZ/+QZrG4wkywL3yLbT
         ZWn1IxNbn8f2GnuMh6PTNHAQMcqYE84Xso3mUpb4yrls/d5BkygDql9rT2AbCaU1rXmV
         aG7U37mJHp1yHNG9T0HNRrmgnrfZJLj56M3F3K4QloD+puxiVX5r87Ob+fdyKiR33Ha/
         /Sbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681196337;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MkPWy8i3gIpsLoeWwDAlEsZ0w4K2xPzFMQ2JOpCk6A4=;
        b=4rXOl40ZTuXDVlE5apcF3Yhh8XLosmqeayzfstLA2HW48b9i7elQzKvsXhlhbC06Rx
         QL5LZV/srRn5QI4KyIXr9FMDB6WsU50XvQq1zsqF1l1SJ1XVmtfcBOYPg4MFlqw2FZ+P
         7xAJVdFn7dh0nMqX/aEoWckL4TPFMzFF5b+6YSrY0eXlbRYdWpHq2i//vkEery15ImU+
         yOZfCdF7wnVVw0uCK+ZWb0USUjgFdhPoVBXNUBJNB8mSmLAZfmjEU4aaMJs1vSXePNN9
         Sv+eQwl7L3nQP5ny8u+HL8Nr4XYGaljWc3oW8KhljiYTirbkAiCWL4GdjGI+qbPecf7I
         xcTw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9ckuRI5J9G/lykXGF33kVLu/6qUG7pIqIcgwnzus414k1LVio8A
	LwWLOHn1Dy9ZP3nnBZggwSg=
X-Google-Smtp-Source: AKy350b3b5Co4gPasmokST8Bc5cM2VxCkrA97gGi+aNpYymjDqLacXbAo0/xjZqaWlAx5ABHWW4dOw==
X-Received: by 2002:adf:f84e:0:b0:2cf:e995:afef with SMTP id d14-20020adff84e000000b002cfe995afefmr394591wrq.13.1681196337706;
        Mon, 10 Apr 2023 23:58:57 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:3b0f:b0:3f0:7f3f:3a4b with SMTP id
 m15-20020a05600c3b0f00b003f07f3f3a4bls3885099wms.3.-pod-control-gmail; Mon,
 10 Apr 2023 23:58:55 -0700 (PDT)
X-Received: by 2002:a1c:7303:0:b0:3ed:276d:81a4 with SMTP id d3-20020a1c7303000000b003ed276d81a4mr1221755wmb.32.1681196335137;
        Mon, 10 Apr 2023 23:58:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681196335; cv=none;
        d=google.com; s=arc-20160816;
        b=qK6dPPcDm0BO5rBWMNY2n5Pz9/3SRKqtagqyQGOmPAd7zUMXOaqCwNSv+KNsYf1HJ1
         s7ocO+u93xAbe7D75rZIqmP9QHmDWkC5/8xXUwg29wkjf8cesFL7q2Dr+cX95XjyYChG
         L9ErIoFX7ryPFFs0o67T4zUyMCQUiILRWNv89MlZa9OPq62g8lfiMg1rhB1LOcLyJXIX
         DtQQIOy670dEypUGTIeGKXNskXTQkpKIv9j/PZpUkH+eF5LIdi2K4yD42SL7i0iT9iNO
         U/BZFjBlqDuIYdTL7sJP35foe3GrPhqirVz913SGUe/IiSrmBcyV319Ne2Nz3kOkR/wG
         gvGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=FWRIpt3u2RkZ57l/yE6etWt/OArtq4m6SrxMv/Sixoo=;
        b=rfpzw4dYWZ29zCiSDgga/JG10yu1mKUV7DJQZG03eyBLpMFbYJtSA/R5mR9FeDM6b+
         Jo8OUbv2QUKFZINI2sYwzaUcvQXpsLKQzoGIHPYLGcX2LuCgQze+te1Rl/56abMaclLI
         5Zkob05LXG7u6AXPq9A1LyzIj+rVgBGD9n5n/uKiLotjSzbqhxxCPEUM3oWVs8U94HWh
         OXl9DXjsf8tXsbH70Gv38U8TH9efPXh+jd+MKQKF6swt9oBsGi5pINZZiOXj6GpIJDzE
         7yL4EAVzrL0ZzCpmNcB5bD946AsLR05tMzBsguC2n10C6xC3+mlo2wkFs3xCa4NBlLAP
         R4pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=jPw3SUMb;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=5qCCkeKW;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id bh24-20020a05600c3d1800b003edf4802580si44863wmb.2.2023.04.10.23.58.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 23:58:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id BEA6421A48;
	Tue, 11 Apr 2023 06:58:54 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 92E8B13519;
	Tue, 11 Apr 2023 06:58:54 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id yGqtIS4FNWSGVgAAMHmgww
	(envelope-from <hare@suse.de>); Tue, 11 Apr 2023 06:58:54 +0000
Message-ID: <b3cad686-fa03-b7a4-01c3-9293a7421582@suse.de>
Date: Tue, 11 Apr 2023 08:58:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [RFC PATCH 5/9] iscsi: set netns for iscsi_tcp hosts
Content-Language: en-US
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, netdev@vger.kernel.org,
 Lee Duncan <lduncan@suse.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <566c527d12f6ed56eeb40952fef7431a0ccdc78f.1675876735.git.lduncan@suse.com>
 <82eb95ac-2dca-7a7a-116a-2771c4551bab@suse.de> <ZDSoH193jm2jOZKA@localhost>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <ZDSoH193jm2jOZKA@localhost>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=jPw3SUMb;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=5qCCkeKW;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.28
 as permitted sender) smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=suse.de
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

On 4/11/23 02:21, Chris Leech wrote:
> On Tue, Mar 14, 2023 at 05:29:25PM +0100, Hannes Reinecke wrote:
>> On 2/8/23 18:40, Lee Duncan wrote:
>>> From: Lee Duncan <lduncan@suse.com>
>>>
>>> This lets iscsi_tcp operate in multiple namespaces.  It uses current
>>> during session creation to find the net namespace, but it might be
>>> better to manage to pass it along from the iscsi netlink socket.
>>>
>> And indeed, I'd rather use the namespace from the iscsi netlink socket.
>> If you use the namespace from session creation you'd better hope that
>> this function is not called from a workqueue ...
>=20
> The cleanest way I see to do this is to split the transport
> session_create function between bound and unbound, instead of checking
> for a NULL ep.  That should cleanly serperate out the host-per-session
> behavior of iscsi_tcp, so we can pass in the namespace without changing
> the other drivers.
>=20
> This is what that looks like on top of the existing patches, but we can
> merge it in and rearrange if desired.
>=20
> - Chris
>=20
> ---
>=20
> Distinguish between bound and unbound session creation with different
> transport functions, instead of just checking for a NULL endpoint.
>=20
> This let's the transport code pass the network namespace into the
> unbound session creation of iscsi_tcp, without changing the offloading
> drivers which all expect an bound endpoint.
>=20
> iSER has compatibility checks to work without a bound endpoint, so
> expose both transport functions there.
>=20
> Signed-off-by: Chris Leech <cleech@redhat.com>
> ---
>   drivers/infiniband/ulp/iser/iscsi_iser.c | 41 +++++++++++++++++-------
>   drivers/scsi/iscsi_tcp.c                 | 16 ++++-----
>   drivers/scsi/iscsi_tcp.h                 |  1 +
>   drivers/scsi/scsi_transport_iscsi.c      | 17 +++++++---
>   include/scsi/scsi_transport_iscsi.h      |  3 ++
>   5 files changed, 52 insertions(+), 26 deletions(-)
>=20
> diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniban=
d/ulp/iser/iscsi_iser.c
> index 6865f62eb831..ca8de612d585 100644
> --- a/drivers/infiniband/ulp/iser/iscsi_iser.c
> +++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
> @@ -593,20 +593,10 @@ static inline unsigned int iser_dif_prot_caps(int p=
rot_caps)
>   	return ret;
>   }
>  =20
> -/**
> - * iscsi_iser_session_create() - create an iscsi-iser session
> - * @ep:             iscsi end-point handle
> - * @cmds_max:       maximum commands in this session
> - * @qdepth:         session command queue depth
> - * @initial_cmdsn:  initiator command sequnce number
> - *
> - * Allocates and adds a scsi host, expose DIF supprot if
> - * exists, and sets up an iscsi session.
> - */
>   static struct iscsi_cls_session *
> -iscsi_iser_session_create(struct iscsi_endpoint *ep,
> +__iscsi_iser_session_create(struct iscsi_endpoint *ep,
>   			  uint16_t cmds_max, uint16_t qdepth,
> -			  uint32_t initial_cmdsn)
> +			  uint32_t initial_cmdsn, struct net *net)
>   {
>   	struct iscsi_cls_session *cls_session;
>   	struct Scsi_Host *shost;
> @@ -694,6 +684,32 @@ iscsi_iser_session_create(struct iscsi_endpoint *ep,
>   	return NULL;
>   }
>  =20
> +/**
> + * iscsi_iser_session_create() - create an iscsi-iser session
> + * @ep:             iscsi end-point handle
> + * @cmds_max:       maximum commands in this session
> + * @qdepth:         session command queue depth
> + * @initial_cmdsn:  initiator command sequnce number
> + *
> + * Allocates and adds a scsi host, expose DIF supprot if
> + * exists, and sets up an iscsi session.
> + */
> +static struct iscsi_cls_session *
> +iscsi_iser_session_create(struct iscsi_endpoint *ep,
> +			  uint16_t cmds_max, uint16_t qdepth,
> +			  uint32_t initial_cmdsn) {
> +	return __iscsi_iser_session_create(ep, cmds_max, qdepth,
> +					   initial_cmdsn, NULL);
> +}
> +
> +static struct iscsi_cls_session *
> +iscsi_iser_unbound_session_create(struct net *net,
> +				  uint16_t cmds_max, uint16_t qdepth,
> +				  uint32_t initial_cmdsn) {
> +	return __iscsi_iser_session_create(NULL, cmds_max, qdepth,
> +					   initial_cmdsn, net);
> +}
> +
>   static int iscsi_iser_set_param(struct iscsi_cls_conn *cls_conn,
>   				enum iscsi_param param, char *buf, int buflen)
>   {
> @@ -983,6 +999,7 @@ static struct iscsi_transport iscsi_iser_transport =
=3D {
>   	.caps                   =3D CAP_RECOVERY_L0 | CAP_MULTI_R2T | CAP_TEXT=
_NEGO,
>   	/* session management */
>   	.create_session         =3D iscsi_iser_session_create,
> +	.create_unbound_session =3D iscsi_iser_unbound_session_create,
>   	.destroy_session        =3D iscsi_iser_session_destroy,
>   	/* connection management */
>   	.create_conn            =3D iscsi_iser_conn_create,
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index 171685011ad9..b78239f25073 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -922,7 +922,7 @@ iscsi_sw_tcp_conn_get_stats(struct iscsi_cls_conn *cl=
s_conn,
>   }
>  =20
>   static struct iscsi_cls_session *
> -iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max=
,
> +iscsi_sw_tcp_session_create(struct net *net, uint16_t cmds_max,
>   			    uint16_t qdepth, uint32_t initial_cmdsn)
>   {
>   	struct iscsi_cls_session *cls_session;
> @@ -931,11 +931,6 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *e=
p, uint16_t cmds_max,
>   	struct Scsi_Host *shost;
>   	int rc;
>  =20
> -	if (ep) {
> -		printk(KERN_ERR "iscsi_tcp: invalid ep %p.\n", ep);
> -		return NULL;
> -	}
> -
>   	shost =3D iscsi_host_alloc(&iscsi_sw_tcp_sht,
>   				 sizeof(struct iscsi_sw_tcp_host), 1);
>   	if (!shost)
> @@ -952,6 +947,9 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep=
, uint16_t cmds_max,
>   		goto free_host;
>   	shost->can_queue =3D rc;
>  =20
> +	tcp_sw_host =3D iscsi_host_priv(shost);
> +	tcp_sw_host->net_ns =3D net;
> +
>   	if (iscsi_host_add(shost, NULL))
>   		goto free_host;
>  =20
> @@ -968,7 +966,6 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep=
, uint16_t cmds_max,
>   		goto remove_session;
>  =20
>   	/* We are now fully setup so expose the session to sysfs. */
> -	tcp_sw_host =3D iscsi_host_priv(shost);
>   	tcp_sw_host->session =3D session;
>   	return cls_session;
>  =20
> @@ -1074,7 +1071,8 @@ static int iscsi_sw_tcp_slave_configure(struct scsi=
_device *sdev)
>  =20
>   static struct net *iscsi_sw_tcp_netns(struct Scsi_Host *shost)
>   {
> -	return current->nsproxy->net_ns;
> +	struct iscsi_sw_tcp_host *tcp_sw_host =3D iscsi_host_priv(shost);
> +	return tcp_sw_host->net_ns;
>   }
>  =20
>   static struct scsi_host_template iscsi_sw_tcp_sht =3D {
> @@ -1104,7 +1102,7 @@ static struct iscsi_transport iscsi_sw_tcp_transpor=
t =3D {
>   	.caps			=3D CAP_RECOVERY_L0 | CAP_MULTI_R2T | CAP_HDRDGST
>   				  | CAP_DATADGST,
>   	/* session management */
> -	.create_session		=3D iscsi_sw_tcp_session_create,
> +	.create_unbound_session	=3D iscsi_sw_tcp_session_create,
>   	.destroy_session	=3D iscsi_sw_tcp_session_destroy,
>   	/* connection management */
>   	.create_conn		=3D iscsi_sw_tcp_conn_create,
> diff --git a/drivers/scsi/iscsi_tcp.h b/drivers/scsi/iscsi_tcp.h
> index 68e14a344904..f0020cb22f59 100644
> --- a/drivers/scsi/iscsi_tcp.h
> +++ b/drivers/scsi/iscsi_tcp.h
> @@ -53,6 +53,7 @@ struct iscsi_sw_tcp_conn {
>  =20
>   struct iscsi_sw_tcp_host {
>   	struct iscsi_session	*session;
> +	struct net *net_ns;
>   };
>  =20
>   struct iscsi_sw_tcp_hdrbuf {
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_tran=
sport_iscsi.c
> index 8fafa8f0e0df..4d346e79468e 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -3144,14 +3144,21 @@ static int
>   iscsi_if_create_session(struct iscsi_internal *priv, struct iscsi_endpo=
int *ep,
>   			struct iscsi_uevent *ev, pid_t pid,
>   			uint32_t initial_cmdsn,	uint16_t cmds_max,
> -			uint16_t queue_depth)
> +			uint16_t queue_depth, struct net *net)
>   {
>   	struct iscsi_transport *transport =3D priv->iscsi_transport;
>   	struct iscsi_cls_session *session;
>   	struct Scsi_Host *shost;
>  =20
> -	session =3D transport->create_session(ep, cmds_max, queue_depth,
> -					    initial_cmdsn);
> +	if (ep) {
> +		session =3D transport->create_session(ep, cmds_max, queue_depth,
> +						    initial_cmdsn);
> +	} else {
> +		session =3D transport->create_unbound_session(net, cmds_max,
> +							    queue_depth,
> +							    initial_cmdsn);
> +	}
> +
>   	if (!session)
>   		return -ENOMEM;
>  =20
> @@ -4145,7 +4152,7 @@ iscsi_if_recv_msg(struct net *net, struct sk_buff *=
skb,
>   					      portid,
>   					      ev->u.c_session.initial_cmdsn,
>   					      ev->u.c_session.cmds_max,
> -					      ev->u.c_session.queue_depth);
> +					      ev->u.c_session.queue_depth, net);
>   		break;
>   	/* MARK */
>   	case ISCSI_UEVENT_CREATE_BOUND_SESSION:
> @@ -4160,7 +4167,7 @@ iscsi_if_recv_msg(struct net *net, struct sk_buff *=
skb,
>   					portid,
>   					ev->u.c_bound_session.initial_cmdsn,
>   					ev->u.c_bound_session.cmds_max,
> -					ev->u.c_bound_session.queue_depth);
> +					ev->u.c_bound_session.queue_depth, net);
>   		iscsi_put_endpoint(ep);
>   		break;
>   	case ISCSI_UEVENT_DESTROY_SESSION:
> diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_tran=
sport_iscsi.h
> index 0c3fd690ecf8..4d8a3d770bed 100644
> --- a/include/scsi/scsi_transport_iscsi.h
> +++ b/include/scsi/scsi_transport_iscsi.h
> @@ -79,6 +79,9 @@ struct iscsi_transport {
>   	struct iscsi_cls_session *(*create_session) (struct iscsi_endpoint *ep=
,
>   					uint16_t cmds_max, uint16_t qdepth,
>   					uint32_t sn);
> +	struct iscsi_cls_session *(*create_unbound_session) (struct net *net,
> +					uint16_t cmds_max, uint16_t qdepth,
> +					uint32_t sn);
>   	void (*destroy_session) (struct iscsi_cls_session *session);
>   	struct iscsi_cls_conn *(*create_conn) (struct iscsi_cls_session *sess,
>   				uint32_t cid);

I'm not _that_ happy with these two functions; but can't really see a=20
way around it.
Can't we rename the 'unbound' version to
'create_session_ns' or something?

Cheers,

Hannes
--=20
Dr. Hannes Reinecke                Kernel Storage Architect
hare@suse.de                              +49 911 74053 688
SUSE Software Solutions GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
HRB 36809 (AG N=C3=BCrnberg), Gesch=C3=A4ftsf=C3=BChrer: Ivo Totev, Andrew
Myers, Andrew McDonald, Martje Boudien Moerman

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/b3cad686-fa03-b7a4-01c3-9293a7421582%40suse.de.

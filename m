Return-Path: <open-iscsi+bncBCHZVHVFVMARB2GAYKQAMGQEBAPAQ7I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5FA6B9B62
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 17:27:22 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id o15-20020a05600002cf00b002c54a27803csf2834060wry.22
        for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 09:27:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678811242; cv=pass;
        d=google.com; s=arc-20160816;
        b=ieMn2SEpZ3okKGaNa/ZTtEKnViJpxXMgcrfVtbjxxGdC5K4ealXWD0X4ZxwC6Xafj7
         QNE2g8ALkC9QolzI4xJlvR8s+qwETh0kmZ1Wqx0aTi+cNr8JxaWAJQyN211ZaHoJAQZE
         VDoTwQFVJkt3mi6zddNqapxUyKoBw+fFHinMU6Lmowd4oFTQ3F7hBez+p4E3j8NmN1a0
         X36orrW5+CfCyFYcNv8gF5l/GI26+xUcOXFr1Q/FESy6RaTBnpcl4TVXwsZ+VLcmZFEZ
         2EAuWDJz7NJixhlDE6p1EUgonPvlwtvIn7iiJTAc7FXACp0DaRdUSpMTLPrcw96IhFgN
         MSaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=Oi+skDt8QZU6ON3YJNp9v4lIxs7r5ZMy5KZ/T+DoA1k=;
        b=JtD7JdAjviwg/5YOnQFqZJrpQDwLtkwPuv8kC5Kxb2CjNFvDa7/qnluX6aCuxsEcJw
         Wu4nLRyQzKU+w5UDU3HTjW2Y55RXMPcC81PLNG/MW4ygFPtxqs9eePXGnVs185u/I7FD
         HMxiwUSCg3FK8VNWVc7FO4Cmjm8JYH3u1c/FOoWo6biWcSacslVWoU3mzx/BY+PCdkNm
         bSgulFZ/ww1+54XsfkgxgpDo77/KSMgD7hL3IL/UZL6lPY4AlES64t1NxJIsoVas2ygC
         9n6ZyY9sH29TmSIzfSkCCjKMJhrlqzgWuSfgnyhkCXq1kTffKTNcfS6YwVWZ9kUPskE1
         eIpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=GmtOWSGW;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678811242;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oi+skDt8QZU6ON3YJNp9v4lIxs7r5ZMy5KZ/T+DoA1k=;
        b=PjVtQNhdNAIsKHBijnQr5z6llrK7eBa7gNV4H5mmS3CTo4i+XwZNpNEbOpEK8tyYf4
         s2sa+Fcq4msH79T5PUj0g2ChudrdOI7m8AybhQRGs36TyCBn/QFSzZSsCXfjL9BW4P+V
         qpgU+0iFfzpFMzp0FXTnon9L2LfVzSB7yZxTNhk2dzL6Nhh4Di3f5ixydeObNiGMCNL9
         3IR8gJph/c1kv4wV6jh2D7emcWwjxk+NAZAM2ZVb9BsC0gq9R17Bek5mh/49L4Ko78Y7
         2G8S55oXsnD2pEXwyPFqDCuArO7ZTxfsZOZvJCxhAKjcpHVd/NsXZDZnIadg8VRJ0kfA
         wVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678811242;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Oi+skDt8QZU6ON3YJNp9v4lIxs7r5ZMy5KZ/T+DoA1k=;
        b=alhPnCxIgWN7v0DMDWkLWI4fqJ0DG5Kw22bwblFBwt+Ek1EmWU+/4h9ymrk39FzrWi
         mWAFi32zMkFjbSZ1WdQeSI26kc7nEe+mfHBQts9PaSfaRryFWjUon0FWom25GDBPkP4W
         5CrETzEIQPI+ThZsVk5WgqMkhUVcXBxFcr73Q9exHOBtirASsvYwRQUHl1rCqnwkG2Ok
         9JwiNxmiADaN+r+4XwQcu5AROIkIGYx3bE0vvNFDo+BL5UzVsNBptkywPT0ZPc4ANle9
         KnnI/DWFmjKFyimvJFDqWbruvKO5LEriRPbeBzU8S8fUxhqlbiy38/O6XSYN5FdWTW0o
         02pQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKUp6ex2dnvnt2NkYtZFtrn9D8F0Zbjo5Dmb/WfY0w+EJhHs1J5C
	yxlKBA47IttXRbzRjNWUy1E=
X-Google-Smtp-Source: AK7set8kDhtoPDCu51FDWzm9wKX+Tc6mzSMwgBfJrNdObBhmW9ZLg5pL7oZLVlAm4mR0iOYS+T7DIg==
X-Received: by 2002:a05:600c:444c:b0:3df:d8c9:caa7 with SMTP id v12-20020a05600c444c00b003dfd8c9caa7mr4271694wmn.4.1678811242332;
        Tue, 14 Mar 2023 09:27:22 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:1c87:b0:3dc:5674:6707 with SMTP id
 k7-20020a05600c1c8700b003dc56746707ls10618857wms.2.-pod-canary-gmail; Tue, 14
 Mar 2023 09:27:19 -0700 (PDT)
X-Received: by 2002:a05:600c:314d:b0:3eb:3945:d3fd with SMTP id h13-20020a05600c314d00b003eb3945d3fdmr15162348wmo.14.1678811239897;
        Tue, 14 Mar 2023 09:27:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678811239; cv=none;
        d=google.com; s=arc-20160816;
        b=lwTAremBK4L1t+pWqnHyvS8dkIEeT1AgJJPKbg5fbGFodxhJOqdhTYvx1E9qWl1RJz
         EYojwLs8+DNxFFn7j/pRyYUxXWVmk6SJsxmld3ERv+yqA9hoRIfOGfvLd7GbTXgJ8YrB
         oM16+NpMEI95xA7Ktc1PxIrT9TVlXH6lrI84caL5mCHqpgrZEIxR4LmZgGh/RTdTicFK
         HPc8uNpCjC4IuLDftg9+TPMDJLUVQ4aTmdV57zrykiJaX51webTY1a6Vt1WOflcufwmb
         2mwj3n6zYg+yOumCwy/NRELUGk79LSwAR0InI1aF0Y1Qnp1zOEM4k+IFFVIRe8HFTc4G
         W40g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=h/9mPaAIVeqnBYfih0n1xrYE1XFkE4rm4uoZDD7UMkQ=;
        b=DX0ScoG4uZBDGMHk9/WsGnrH7LphsoB5XVNpv5MGP1lccJjizgucvVZBnlifX5a5Tg
         suhcbdt7EvXSl6SBw9coXh72poDofWyvFgJqeLKTeVe2X2/jt1gAL/dxWzLe2wqQq0TS
         uOXBwQqAFdqY+Ry453aohPAJV83D5tPMb1PBe++imak2OOzIfrtT4WRh9QlGSqTADoKj
         sIA5B0PaDoXQR2PHYB8UkTPM/Ug9aohMZqNEijw0NgoaDe1pxwVfRUVzWpKq6sFu0Up3
         mwsfDCDsMXuuEPqWMwRdmf61PAhSSWTg2cSdwodOxrGsSiGdJH8OY6VhyQDeA70t108w
         ve2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=GmtOWSGW;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2001:67c:2178:6::1d])
        by gmr-mx.google.com with ESMTPS id ay38-20020a05600c1e2600b003ed29f3d6d3si180592wmb.1.2023.03.14.09.27.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 09:27:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1d as permitted sender) client-ip=2001:67c:2178:6::1d;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 8CF381F8A3;
	Tue, 14 Mar 2023 16:27:19 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 69E8E13A26;
	Tue, 14 Mar 2023 16:27:19 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id Bdv7GGegEGQ+ZAAAMHmgww
	(envelope-from <hare@suse.de>); Tue, 14 Mar 2023 16:27:19 +0000
Message-ID: <83de4002-6846-2f90-7848-ef477f0b0fe5@suse.de>
Date: Tue, 14 Mar 2023 17:27:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC PATCH 4/9] iscsi: make all iSCSI netlink multicast namespace
 aware
Content-Language: en-US
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <587c492ffafb3090ec9e28b7d247fcc7e2141251.1675876734.git.lduncan@suse.com>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <587c492ffafb3090ec9e28b7d247fcc7e2141251.1675876734.git.lduncan@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=GmtOWSGW;       dkim=neutral
 (no key) header.i=@suse.de;       spf=pass (google.com: domain of
 hare@suse.de designates 2001:67c:2178:6::1d as permitted sender)
 smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
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

On 2/8/23 18:40, Lee Duncan wrote:
> From: Lee Duncan <lduncan@suse.com>
> 
> Make use of the per-net netlink sockets. Responses are sent back on the
> same socket/namespace the request was received on.  Async events are
> reported on the socket/namespace stored in the iscsi_cls_host associated
> with the event.
> 
> Signed-off-by: Chris Leech <cleech@redhat.com>
> Signed-off-by: Lee Duncan <lduncan@suse.com>
> ---
>   drivers/scsi/scsi_transport_iscsi.c | 92 +++++++++++++++++++----------
>   1 file changed, 60 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 2e2b291bce41..230b43d34c5f 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -2653,8 +2653,8 @@ iscsi_if_transport_lookup(struct iscsi_transport *tt)
>   }
>   
>   static int
> -iscsi_multicast_netns(struct net *net, struct sk_buff *skb,
> -		      uint32_t group, gfp_t gfp)
> +iscsi_multicast_skb(struct net *net, struct sk_buff *skb,
> +		    uint32_t group, gfp_t gfp)
>   {
>   	struct sock *nls;
>   	struct iscsi_net *isn;
> @@ -2665,17 +2665,10 @@ iscsi_multicast_netns(struct net *net, struct sk_buff *skb,
>   }
>   
>   static int
> -iscsi_multicast_skb(struct sk_buff *skb, uint32_t group, gfp_t gfp)
> -{
> -	return iscsi_multicast_netns(&init_net, skb, group, gfp);
> -}
> -
> -static int
> -iscsi_unicast_skb(struct sk_buff *skb, u32 portid)
> +iscsi_unicast_skb(struct net *net, struct sk_buff *skb, u32 portid)
>   {
>   	struct sock *nls;
>   	struct iscsi_net *isn;
> -	struct net *net = &init_net;
>   
>   	isn = net_generic(net, iscsi_net_id);
>   	nls = isn->nls;
> @@ -2690,6 +2683,7 @@ int iscsi_recv_pdu(struct iscsi_cls_conn *conn, struct iscsi_hdr *hdr,
>   	struct iscsi_uevent *ev;
>   	char *pdu;
>   	struct iscsi_internal *priv;
> +	struct net *net;
>   	int len = nlmsg_total_size(sizeof(*ev) + sizeof(struct iscsi_hdr) +
>   				   data_size);
>   
> @@ -2716,7 +2710,8 @@ int iscsi_recv_pdu(struct iscsi_cls_conn *conn, struct iscsi_hdr *hdr,
>   	memcpy(pdu, hdr, sizeof(struct iscsi_hdr));
>   	memcpy(pdu + sizeof(struct iscsi_hdr), data, data_size);
>   
> -	return iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
> +	net = iscsi_conn_net(conn);
> +	return iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
>   }
>   EXPORT_SYMBOL_GPL(iscsi_recv_pdu);
>   
> @@ -2727,6 +2722,7 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
>   	struct nlmsghdr	*nlh;
>   	struct sk_buff *skb;
>   	struct iscsi_uevent *ev;
> +	struct net *net;
>   	int len = nlmsg_total_size(sizeof(*ev) + data_size);
>   
>   	skb = alloc_skb(len, GFP_ATOMIC);
> @@ -2751,7 +2747,8 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
>   
>   	memcpy((char *)ev + sizeof(*ev), data, data_size);
>   
> -	return iscsi_multicast_skb(skb, ISCSI_NL_GRP_UIP, GFP_ATOMIC);
> +	net = iscsi_host_net(shost->shost_data);
> +	return iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_UIP, GFP_ATOMIC);
>   }
>   EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
>   
> @@ -2761,6 +2758,7 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
>   	struct sk_buff	*skb;
>   	struct iscsi_uevent *ev;
>   	struct iscsi_internal *priv;
> +	struct net *net;
>   	int len = nlmsg_total_size(sizeof(*ev));
>   	unsigned long flags;
>   	int state;
> @@ -2808,7 +2806,8 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
>   	ev->r.connerror.cid = conn->cid;
>   	ev->r.connerror.sid = iscsi_conn_get_sid(conn);
>   
> -	iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
> +	net = iscsi_conn_net(conn);
> +	iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
>   
>   	iscsi_cls_conn_printk(KERN_INFO, conn, "detected conn error (%d)\n",
>   			      error);
> @@ -2822,6 +2821,7 @@ void iscsi_conn_login_event(struct iscsi_cls_conn *conn,
>   	struct sk_buff  *skb;
>   	struct iscsi_uevent *ev;
>   	struct iscsi_internal *priv;
> +	struct net *net;
>   	int len = nlmsg_total_size(sizeof(*ev));
>   
>   	priv = iscsi_if_transport_lookup(conn->transport);
> @@ -2842,7 +2842,9 @@ void iscsi_conn_login_event(struct iscsi_cls_conn *conn,
>   	ev->r.conn_login.state = state;
>   	ev->r.conn_login.cid = conn->cid;
>   	ev->r.conn_login.sid = iscsi_conn_get_sid(conn);
> -	iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
> +
> +	net = iscsi_conn_net(conn);
> +	iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
>   
>   	iscsi_cls_conn_printk(KERN_INFO, conn, "detected conn login (%d)\n",
>   			      state);
> @@ -2853,11 +2855,17 @@ void iscsi_post_host_event(uint32_t host_no, struct iscsi_transport *transport,
>   			   enum iscsi_host_event_code code, uint32_t data_size,
>   			   uint8_t *data)
>   {
> +	struct Scsi_Host *shost;
> +	struct net *net;
>   	struct nlmsghdr *nlh;
>   	struct sk_buff *skb;
>   	struct iscsi_uevent *ev;
>   	int len = nlmsg_total_size(sizeof(*ev) + data_size);
>   
> +	shost = scsi_host_lookup(host_no);
> +	if (!shost)
> +		return;
> +
>   	skb = alloc_skb(len, GFP_NOIO);
>   	if (!skb) {
>   		printk(KERN_ERR "gracefully ignored host event (%d):%d OOM\n",
> @@ -2876,7 +2884,9 @@ void iscsi_post_host_event(uint32_t host_no, struct iscsi_transport *transport,
>   	if (data_size)
>   		memcpy((char *)ev + sizeof(*ev), data, data_size);
>   
> -	iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_NOIO);
> +	net = iscsi_host_net(shost->shost_data);
> +	scsi_host_put(shost);
> +	iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_NOIO);
>   }
>   EXPORT_SYMBOL_GPL(iscsi_post_host_event);
>   
> @@ -2884,11 +2894,17 @@ void iscsi_ping_comp_event(uint32_t host_no, struct iscsi_transport *transport,
>   			   uint32_t status, uint32_t pid, uint32_t data_size,
>   			   uint8_t *data)
>   {
> +	struct Scsi_Host *shost;
> +	struct net *net;
>   	struct nlmsghdr *nlh;
>   	struct sk_buff *skb;
>   	struct iscsi_uevent *ev;
>   	int len = nlmsg_total_size(sizeof(*ev) + data_size);
>   
> +	shost = scsi_host_lookup(host_no);
> +	if (!shost)
> +		return;
> +
>   	skb = alloc_skb(len, GFP_NOIO);
>   	if (!skb) {
>   		printk(KERN_ERR "gracefully ignored ping comp: OOM\n");
> @@ -2905,12 +2921,15 @@ void iscsi_ping_comp_event(uint32_t host_no, struct iscsi_transport *transport,
>   	ev->r.ping_comp.data_size = data_size;
>   	memcpy((char *)ev + sizeof(*ev), data, data_size);
>   
> -	iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_NOIO);
> +	net = iscsi_host_net(shost->shost_data);
> +	scsi_host_put(shost);
> +	iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_NOIO);
>   }
>   EXPORT_SYMBOL_GPL(iscsi_ping_comp_event);
>   
>   static int
> -iscsi_if_send_reply(u32 portid, int type, void *payload, int size)
> +iscsi_if_send_reply(struct net *net, u32 portid, int type,
> +		    void *payload, int size)
>   {
>   	struct sk_buff	*skb;
>   	struct nlmsghdr	*nlh;
> @@ -2924,11 +2943,11 @@ iscsi_if_send_reply(u32 portid, int type, void *payload, int size)
>   
>   	nlh = __nlmsg_put(skb, 0, 0, type, (len - sizeof(*nlh)), 0);
>   	memcpy(nlmsg_data(nlh), payload, size);
> -	return iscsi_unicast_skb(skb, portid);
> +	return iscsi_unicast_skb(net, skb, portid);
>   }
>   
>   static int
> -iscsi_if_get_stats(struct iscsi_transport *transport, struct nlmsghdr *nlh)
> +iscsi_if_get_stats(struct net *net, struct iscsi_transport *transport, struct nlmsghdr *nlh)
>   {
>   	struct iscsi_uevent *ev = nlmsg_data(nlh);
>   	struct iscsi_stats *stats;
> @@ -2985,7 +3004,7 @@ iscsi_if_get_stats(struct iscsi_transport *transport, struct nlmsghdr *nlh)
>   		skb_trim(skbstat, NLMSG_ALIGN(actual_size));
>   		nlhstat->nlmsg_len = actual_size;
>   
> -		err = iscsi_multicast_skb(skbstat, ISCSI_NL_GRP_ISCSID,
> +		err = iscsi_multicast_skb(net, skbstat, ISCSI_NL_GRP_ISCSID,
>   					  GFP_ATOMIC);
>   	} while (err < 0 && err != -ECONNREFUSED);
>   
> @@ -3005,6 +3024,7 @@ int iscsi_session_event(struct iscsi_cls_session *session,
>   	struct iscsi_uevent *ev;
>   	struct sk_buff  *skb;
>   	struct nlmsghdr *nlh;
> +	struct net *net;
>   	int rc, len = nlmsg_total_size(sizeof(*ev));
>   
>   	priv = iscsi_if_transport_lookup(session->transport);
> @@ -3049,7 +3069,8 @@ int iscsi_session_event(struct iscsi_cls_session *session,
>   	 * this will occur if the daemon is not up, so we just warn
>   	 * the user and when the daemon is restarted it will handle it
>   	 */
> -	rc = iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_KERNEL);
> +	net = iscsi_sess_net(session);
> +	rc = iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_KERNEL);
>   	if (rc == -ESRCH)
>   		iscsi_cls_session_printk(KERN_ERR, session,
>   					 "Cannot notify userspace of session "
> @@ -3412,7 +3433,8 @@ iscsi_send_ping(struct iscsi_transport *transport, struct iscsi_uevent *ev)
>   }
>   
>   static int
> -iscsi_get_chap(struct iscsi_transport *transport, struct nlmsghdr *nlh)
> +iscsi_get_chap(struct net *net, struct iscsi_transport *transport,
> +	       struct nlmsghdr *nlh)
>   {
>   	struct iscsi_uevent *ev = nlmsg_data(nlh);
>   	struct Scsi_Host *shost = NULL;
> @@ -3471,7 +3493,7 @@ iscsi_get_chap(struct iscsi_transport *transport, struct nlmsghdr *nlh)
>   		skb_trim(skbchap, NLMSG_ALIGN(actual_size));
>   		nlhchap->nlmsg_len = actual_size;
>   
> -		err = iscsi_multicast_skb(skbchap, ISCSI_NL_GRP_ISCSID,
> +		err = iscsi_multicast_skb(net, skbchap, ISCSI_NL_GRP_ISCSID,
>   					  GFP_KERNEL);
>   	} while (err < 0 && err != -ECONNREFUSED);
>   
> @@ -3818,7 +3840,8 @@ static int iscsi_logout_flashnode_sid(struct iscsi_transport *transport,
>   }
>   
>   static int
> -iscsi_get_host_stats(struct iscsi_transport *transport, struct nlmsghdr *nlh)
> +iscsi_get_host_stats(struct net *net, struct iscsi_transport *transport,
> +		     struct nlmsghdr *nlh)
>   {
>   	struct iscsi_uevent *ev = nlmsg_data(nlh);
>   	struct Scsi_Host *shost = NULL;
> @@ -3878,8 +3901,8 @@ iscsi_get_host_stats(struct iscsi_transport *transport, struct nlmsghdr *nlh)
>   		skb_trim(skbhost_stats, NLMSG_ALIGN(actual_size));
>   		nlhhost_stats->nlmsg_len = actual_size;
>   
> -		err = iscsi_multicast_skb(skbhost_stats, ISCSI_NL_GRP_ISCSID,
> -					  GFP_KERNEL);
> +		err = iscsi_multicast_skb(net, skbhost_stats,
> +					  ISCSI_NL_GRP_ISCSID, GFP_KERNEL);
>   	} while (err < 0 && err != -ECONNREFUSED);
>   
>   exit_host_stats:
> @@ -4001,7 +4024,8 @@ static int iscsi_if_transport_conn(struct iscsi_transport *transport,
>   }
>   
>   static int
> -iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
> +iscsi_if_recv_msg(struct net *net, struct sk_buff *skb,
> +		  struct nlmsghdr *nlh, uint32_t *group)
>   {
>   	int err = 0;
>   	u32 portid;
> @@ -4096,7 +4120,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
>   		err = iscsi_if_transport_conn(transport, nlh);
>   		break;
>   	case ISCSI_UEVENT_GET_STATS:
> -		err = iscsi_if_get_stats(transport, nlh);
> +		err = iscsi_if_get_stats(net, transport, nlh);
>   		break;
>   	case ISCSI_UEVENT_TRANSPORT_EP_CONNECT:
>   	case ISCSI_UEVENT_TRANSPORT_EP_POLL:
> @@ -4121,7 +4145,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
>   		err = iscsi_send_ping(transport, ev);
>   		break;
>   	case ISCSI_UEVENT_GET_CHAP:
> -		err = iscsi_get_chap(transport, nlh);
> +		err = iscsi_get_chap(net, transport, nlh);
>   		break;
>   	case ISCSI_UEVENT_DELETE_CHAP:
>   		err = iscsi_delete_chap(transport, ev);
> @@ -4152,7 +4176,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
>   				     nlmsg_attrlen(nlh, sizeof(*ev)));
>   		break;
>   	case ISCSI_UEVENT_GET_HOST_STATS:
> -		err = iscsi_get_host_stats(transport, nlh);
> +		err = iscsi_get_host_stats(net, transport, nlh);
>   		break;
>   	default:
>   		err = -ENOSYS;
> @@ -4170,6 +4194,8 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
>   static void
>   iscsi_if_rx(struct sk_buff *skb)
>   {
> +	struct sock *sk = skb->sk;
> +	struct net *net = sock_net(sk);
>   	u32 portid = NETLINK_CB(skb).portid;
>   
>   	mutex_lock(&rx_queue_mutex);
> @@ -4192,7 +4218,7 @@ iscsi_if_rx(struct sk_buff *skb)
>   		if (rlen > skb->len)
>   			rlen = skb->len;
>   
> -		err = iscsi_if_recv_msg(skb, nlh, &group);
> +		err = iscsi_if_recv_msg(net, skb, nlh, &group);
>   		if (err) {
>   			ev->type = ISCSI_KEVENT_IF_ERROR;
>   			ev->iferror = err;
> @@ -4208,7 +4234,9 @@ iscsi_if_rx(struct sk_buff *skb)
>   				break;
>   			if (ev->type == ISCSI_UEVENT_GET_CHAP && !err)
>   				break;
> -			err = iscsi_if_send_reply(portid, nlh->nlmsg_type,
> +			if (ev->type == ISCSI_UEVENT_GET_HOST_STATS && !err)
> +				break;
> +			err = iscsi_if_send_reply(net, portid, nlh->nlmsg_type,
>   						  ev, sizeof(*ev));
>   			if (err == -EAGAIN && --retries < 0) {
>   				printk(KERN_WARNING "Send reply failed, error %d\n", err);

As discussed with Lee: you should tear down sessions related to this 
namespace from the pernet ->exit callback, otherwise you end up with 
session which can no longer been reached as the netlink socket is gone.

Might be done in an additional patch, though.
If you do you can add:

Reviewed-by: Hannes Reinecke <hare@suse.de>

to this patch.

Cheers,

Hannes

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/83de4002-6846-2f90-7848-ef477f0b0fe5%40suse.de.

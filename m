Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBDNRS6AAMGQET5T2QYQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7C72FA93E
	for <lists+open-iscsi@lfdr.de>; Mon, 18 Jan 2021 19:50:55 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id cc1sf17403320qvb.3
        for <lists+open-iscsi@lfdr.de>; Mon, 18 Jan 2021 10:50:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610995854; cv=pass;
        d=google.com; s=arc-20160816;
        b=jvyAzZEtgTI00tVSAnVwxjhuMWeXMWMWD2QVwBjV1f02SyWvUrRDQ+Y+ck+HXCcUam
         A0rgaGVPS/jQWtMRxc7rphbLy87qhiT5N+9gPhc1bjLVOvMV9+u8FZj0/0h0Bz6FCijC
         WbL6nr6+WQAxHr8CqBLeV8A8T6ALsBwdkc0UkKonYD6PdtpIEWMtuCpoZ+uhYqA21TFH
         WwHVFfghqU/rEk+tFbdgQO/W5d1QpiMueot5Cbk8EGB3cu7o1koX22TX4VaW7G6mL8Le
         Fr3yByF+iFppVgP/RM9gM5eOtresBlqFK652WG1D5LvWqBxq+gSETqdf458bbZuQp0mk
         +mvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=5HQe8C++JQszFENyFh8KAgLQ10SVOJh3RqkC12fUhIY=;
        b=tBxyxuK0Tr+54hcgviDUqSbv7ah4JwBWYSOU5XePvechYF5C4NtTUAbH619A7FaCzz
         LKVma1XForkMi/8NGpkJaGg7jKpXNbqtcmqbZ5aElDj+ETN3pve04mlhHGB5Yw6ZvTt4
         JcZIXmp25/kaKmsOQ+I9CeSihj3ttWhBipBRzd5WTrFqILYm7Via5X4BffSEhWijw/sA
         gIzVqghJONrPx2KCxvODyiVNfWx+RBGQJmD7nihP7Qn6qwOIxjA3Y/uks6clZH3lmfWw
         hz5Z7eXeusLcrRTBWh2uep4kwX6myNwwmvoiFqVFIkI5op8JuXVa+DFDdgRx5zdPNXps
         G24A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=wgmKcvSx;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5HQe8C++JQszFENyFh8KAgLQ10SVOJh3RqkC12fUhIY=;
        b=Spq/rC5Xk1TmL38g0nU0zmIvv2K/7cu/P+1lxYcqbE1MmjFIg7dpRuUS4xwdbLZpWT
         1V9dSJgEkFlNAUK+qismsGRapzbcAzWOogi5zZtlBRAF8EhhOw6tbl9zdf3W9OBvJCDT
         u0+mWuYOkqy6uW9QkXWVNmWoJMJFz+u//4EHTPCHuQv6TzP4WPupnjeADr38AIKTxUT0
         MCbWTEt3dW8rur/4qzkDtrinM7Ecfd2+RMOW1xQFSGCr6kTw+OEXiyKT2FeMB5ghDGj+
         sVv0q9MXF52u4leAboovV8rePHP8wuCdcG2fnHtVXHNU8nyFV7ZgPZmcgwuwaw+p/Fij
         gL6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5HQe8C++JQszFENyFh8KAgLQ10SVOJh3RqkC12fUhIY=;
        b=F3Pio8xbRXvEwxHdXLCwlrwa7FxK+rqBFbsob7L975xulg+jVVftY5yJNg3K4+DHBK
         Z0FIP31Cco18Cox6KAcPb4pvw9eL9bU2TqLLwivW82ct8nv3hoVWdCleDD0RerhQuqAv
         mosIItK0czaBUFutCFSjpqn7N3JMUXRi/jcsZwL0LFCPnmhv23MAt81FU9vScDrnmQ8A
         HVD3HeuL8Khnty7BoF76zvsMuW41ghCfTrOcbZNib4E0SQg9DQQ6NRE+L+C1IN71WQJp
         GXhikQlj1iwX5hbxNpZNzG2s6+aunVqQgLfiaiUGqqHnMtgg4qIyr1659AsQ6O1blTen
         o3XA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530Tg7itflPOyUsmr5OyUa0dAbSlf45B0bk+P+P9IMfCXfroRc6r
	Bpm5a7xCpRwlTEHIFCW6Sng=
X-Google-Smtp-Source: ABdhPJxSKp6EGTDFAVbYonRu2LAQzXfwyWg1dVQmAOUEdhpOszJytYqT8kZ3Si2Ng3bVq8L94z9fIw==
X-Received: by 2002:ac8:7767:: with SMTP id h7mr1018655qtu.136.1610995854102;
        Mon, 18 Jan 2021 10:50:54 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:132f:: with SMTP id p15ls9498994qkj.0.gmail; Mon,
 18 Jan 2021 10:50:53 -0800 (PST)
X-Received: by 2002:a05:620a:218e:: with SMTP id g14mr965083qka.243.1610995853651;
        Mon, 18 Jan 2021 10:50:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610995853; cv=none;
        d=google.com; s=arc-20160816;
        b=PLy2kkpIpikYsJeVxSkfe7aHB9Joi9uNq+LIq27NcBnHsbT54X9CkXt1WKl3Aspp8I
         +5foiJgnzaBsgBHZRJ+OYkIp4X0jVNq9PLb033FMLxewDCIz3NffTiwZxindShHoQfO1
         +KTqXgEEOVHGdcnNoyJqVA4ooadQqOjMqTsHyPX0ov0HvKFxKHwkVN9+onlf0uazj+pk
         TwPaXXWeM09r+ZsimXVWY6xdS9wCGNuYCD29+8imiaQG1zX6ujyWy0t7RmeP2VLn44g1
         gd/SRx6FZM+YlhAorjjFIKEDcNf3T2FYK2ivTm0FEZGBgS9EUFu0DHb+zD5hmecLH6OG
         DFMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=8GefXcpZPbzkuLk9I0fDJwYB6Bx6bVC/7hGxIaOiLgU=;
        b=WKPi9DAy1Rtu98pWqDdWQF+4ThoqAFLT5ok3bghAmnNWDLnej1IPXk2TAVooBiPmsd
         KfXFO9mEbcfScsiA6RG4zsa7JyHAJLY2ovK5mpgoVfs2R0b/uv7/Z0xlHpkYhDDTq4lz
         y8FAR41noEelQzxxFkwH4Z1xGlE5LscCEKyQ6W6h1nuyUM6au71EfMwn7V2mXaE9bUjI
         M0qIyRyH2euAvOTfSoHFyV1MFlJGRmawong4E3cSQOwiROJSjopwkXx1BvOO7VSYn+W6
         sMGI1HOU/40sAPmRTYvQ0HxxWOtzyBB9sEn2PBLeoNuHUvszxwfbGlYgmu2w7/yrFs9q
         xLbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=wgmKcvSx;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id j33si1763532qtd.5.2021.01.18.10.50.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jan 2021 10:50:53 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10IIeloR102230;
	Mon, 18 Jan 2021 18:50:52 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2130.oracle.com with ESMTP id 363nnaegpm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 18 Jan 2021 18:50:52 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10IIiKMa028695;
	Mon, 18 Jan 2021 18:50:51 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3020.oracle.com with ESMTP id 3649wqbx53-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 18 Jan 2021 18:50:51 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 10IIoigB018752;
	Mon, 18 Jan 2021 18:50:45 GMT
Received: from [20.15.0.204] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 18 Jan 2021 10:50:43 -0800
Subject: Re: [PATCH] iscsi: Do Not set param when sock is NULL
To: Gulam Mohamed <gulam.mohamed@oracle.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        Martin Petersen <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, Junxiao Bi <junxiao.bi@oracle.com>
References: <1a8aaa17-b1a3-4d6a-b87a-ff49d61a0d0b@default>
 <9df96d73-015c-4de6-96fa-2f315b066909@default>
 <05277786-2E1F-432D-AE73-F39565C6BEA4@oracle.com>
 <0abfcf5b-5ab8-4968-bf6d-eb4dee32e2f4@default>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <ca8ea0a8-37a5-0ebd-a73e-70edb82ac2b4@oracle.com>
Date: Mon, 18 Jan 2021 12:50:42 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <0abfcf5b-5ab8-4968-bf6d-eb4dee32e2f4@default>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9868 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999 bulkscore=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101180112
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9868 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0 spamscore=0
 mlxlogscore=999 clxscore=1015 bulkscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 phishscore=0 mlxscore=0 malwarescore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101180112
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=wgmKcvSx;
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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

On 1/7/21 9:48 AM, Gulam Mohamed wrote:
> Hi Michael,
>=20
>              As per your suggestions in below mail, I have completed the =
suggested changes and tested them. Can you please review and let me know yo=
ur comments? Here is the patch:
>=20
> Description
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 1. This Kernel panic could be due to a timing issue when there is a race =
between the sync thread and the initiator was processing of a login respons=
e from the target. The session re-open can be invoked from two places
>   a. Sessions sync thread when the iscsid restart
>   b. From iscsid through iscsi error handler 2. The session reopen sequen=
ce is as follows in user-space (iscsi-initiator-utils)
>    a. Disconnect the connection
>    b. Then send the stop connection request to the kernel which releases =
the connection (releases the socket)
>    c. Queues the reopen for 2 seconds delay
>    d. Once the delay expires, create the TCP connection again by calling =
the connect() call
>    e. Poll for the connection
>    f. When poll is successful i.e when the TCP connection is established,=
 it performs
>       i. Creation of session and connection data structures
>       ii. Bind the connection to the session. This is the place where we =
assign the sock to tcp_sw_conn->sock
>       iii. Sets the parameters like target name, persistent address etc .
>       iv. Creates the login pdu
>        v. Sends the login pdu to kernel
>       vi. Returns to the main loop to process further events. The kernel =
then sends the login request over to the target node
>    g. Once login response with success is received, it enters into full f=
eature phase and sets the negotiable parameters like max_recv_data_length, =
max_transmit_length, data_digest etc .
> 3. While setting the negotiable parameters by calling "iscsi_session_set_=
neg_params()", kernel panicked as sock was NULL
>=20
> What happened here is
> ---------------------
> 1. Before initiator received the login response mentioned in above point =
2.f.v, another reopen request was sent from the error handler/sync session =
for the same session, as the initiator utils was in main loop to process fu=
rther events (as mentioned in point 2.f.vi above).
> 2. While processing this reopen, it stopped the connection which released=
 the socket and queued this connection and at this point of time the login =
response was received for the earlier on
>=20
> Fix
> ---
>=20
> 1. Create a flag "set_param_fail" in iscsi_cls_conn structure 2. On ep_di=
sconnect and stop_conn set this flag to indicate set_param calls for connec=
tion level settings should fail 3. This way, scsi_transport_iscsi can set a=
nd check this bit for all drivers 2. On bind_conn clear the bit
>=20
> Signed-off-by: Gulam Mohamed <gulam.mohamed@oracle.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 6 ++++++  include/scsi/scsi_transp=
ort_iscsi.h | 3 +++
>  2 files changed, 9 insertions(+)
>=20
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_tran=
sport_iscsi.c
> index 2e68c0a87698..15c5a7223a40 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -2473,6 +2473,8 @@ static void iscsi_if_stop_conn(struct iscsi_cls_con=
n *conn, int flag)
>  	 * it works.
>  	 */
>  	mutex_lock(&conn_mutex);
> +	if (!test_bit(ISCSI_SET_PARAM_FAIL_BIT, &conn->set_param_fail))
> +		set_bit(ISCSI_SET_PARAM_FAIL_BIT, &conn->set_param_fail);

You can just do a test_and_set_bit.

>  	conn->transport->stop_conn(conn, flag);
>  	mutex_unlock(&conn_mutex);
> =20
> @@ -2895,6 +2897,8 @@ iscsi_set_param(struct iscsi_transport *transport, =
struct iscsi_uevent *ev)
>  			session->recovery_tmo =3D value;
>  		break;
>  	default:
> +		if (test_bit(ISCSI_SET_PARAM_FAIL_BIT, &conn->set_param_fail))
> +			return -ENOTCONN;
>  		err =3D transport->set_param(conn, ev->u.set_param.param,
>  					   data, ev->u.set_param.len);
>  	}
> @@ -2956,6 +2960,7 @@ static int iscsi_if_ep_disconnect(struct iscsi_tran=
sport *transport,
>  		mutex_lock(&conn->ep_mutex);
>  		conn->ep =3D NULL;
>  		mutex_unlock(&conn->ep_mutex);
> +		set_bit(ISCSI_SET_PARAM_FAIL_BIT, &conn->set_param_fail);
>  	}
> =20
>  	transport->ep_disconnect(ep);
> @@ -3716,6 +3721,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsg=
hdr *nlh, uint32_t *group)
>  		ev->r.retcode =3D	transport->bind_conn(session, conn,
>  						ev->u.b_conn.transport_eph,
>  						ev->u.b_conn.is_leading);
> +		clear_bit(ISCSI_SET_PARAM_FAIL_BIT, &conn->set_param_fail);

You should check retcode and only clear if it indicates success.


>  		mutex_unlock(&conn_mutex);
> =20
>  		if (ev->r.retcode || !transport->ep_connect) diff --git a/include/scsi=
/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
> index 8a26a2ffa952..71b1952b913b 100644
> --- a/include/scsi/scsi_transport_iscsi.h
> +++ b/include/scsi/scsi_transport_iscsi.h
> @@ -29,6 +29,8 @@ struct bsg_job;
>  struct iscsi_bus_flash_session;
>  struct iscsi_bus_flash_conn;
> =20
> +#define ISCSI_SET_PARAM_FAIL_BIT	1
> +
>  /**
>   * struct iscsi_transport - iSCSI Transport template
>   *
> @@ -206,6 +208,7 @@ struct iscsi_cls_conn {
> =20
>  	struct device dev;		/* sysfs transport/container device */
>  	enum iscsi_connection_state state;
> +	unsigned long set_param_fail; /* set_param for connection should fail=
=20

You don't need a comment since the bit and field name say the same thing.

Th implementation is a little odd, because it's a bitmap with only one bit,
and named specifically for the one bit. It would be best to either do:

1. single bool/bit:

unsigned conn_bound:1;
or
bool conn_bound;

2. generic bitmap:

#define ISCSI_CONN_FLAGS_BOUND 1

unsigned long conn_state_flags;

3. fix up the iscsi_cls_conn->state values so it works in general and also
for your case.

For this conn state one we would fix up the conn state, because it's curren=
tly
looks wrong, and when the conn is down it still shows "up", and it doesn't =
seem
to show "failed".

So add a new state ISCSI_CONN_BOUND in:

static const char *const connection_state_names[] =3D {
        [ISCSI_CONN_UP] =3D "up",
        [ISCSI_CONN_DOWN] =3D "down",
        [ISCSI_CONN_FAILED] =3D "failed"
};

In iscsi_if_ep_disconnect and iscsi_if_stop_conn set:

conn->state =3D ISCSI_CONN_DOWN.

In that code where we call transport->bind_conn() do

if (!ev->r.retcode)
	conn->state =3D ISCSI_CONN_BOUND

and then in iscsi_set_param do

if (conn->state !=3D ISCSI_CONN_BOUND)
	return -ENOTCONN

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/ca8ea0a8-37a5-0ebd-a73e-70edb82ac2b4%40oracle.com.
